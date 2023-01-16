# Change Atomic Ordering Pass Benchmarking

Main goal is to _**change atomic ordering accesses**_ (from `NotAtomic` to `Unordered`, for example) by implemented bitcode pass in the
Kotlin Native compiler and _**test resulting bitcode and performance**_.

## Pass implementation

* See main implementation of pass
  in [ChangeAtomicOrdering.kt](../backend.native/compiler/ir/backend.native/src/org/jetbrains/kotlin/backend/konan/aopass/ChangeAtomicOrdering.kt):
  _**atomic orderings to change can be set here**_: by default all `NotAtomic` accesses are replaced with `Unordered` ones;
* pass's wrapper `changeAtomicOrderingPhase`
  in [BitcodePhases.kt](../backend.native/compiler/ir/backend.native/src/org/jetbrains/kotlin/backend/konan/llvm/BitcodePhases.kt);
* that is called
  at `bitcodePostprocessingPhase` [TopLevelPhases.kt](../backend.native/compiler/ir/backend.native/src/org/jetbrains/kotlin/backend/konan/ToplevelPhases.kt).

Also, several util functions were added
to [LlvmUtils.kt](../backend.native/compiler/ir/backend.native/src/org/jetbrains/kotlin/backend/konan/llvm/LlvmUtils.kt).

## Test on small project

One can build their own code using custom compiler (i.e. with atomic ordering pass enabled), check its bitcode and simply benchmark its
performance.

* Project directory can be found [here](testOnSmallProject).
* Code to test compiler on can be set in [Main.kt](testOnSmallProject/src/nativeMain/kotlin/Main.kt). For now, there are just a lot
  of simple arithmetics with elements of an array.

### Build modified compiler

Before testing custom compiler it's important to make sure it's built!
Run from the root ([kmm-research](../..)) directory:

```bash
./gradlew :kotlin-native:dist
```

Built compiler directory can be found here: `../../dist` (relatively to `aoPassBenchmarking`). From now on commands path to compiler's
directory will be referred to as `COMPILER_DIST`.

### Test compiler on code... manually

To built test code with custom compiler run:

```bash
COMPILER_DIST/bin/kotlinc-native -linker-options="-latomic" testOnSmallProject/src/nativeMain/kotlin/Main.kt -o output.kexe 
```

where output executable file is `output.kexe`. Also, `-opt` can be simply passed to the compiler to enable optimizations.<br/>
P. S. `-linker-options="-latomic"` is necessary, because atomic accesses can appear as a result of atomic ordering pass was performed.

### Test compiler on code... via Gradle

The `kotlin.native.home` variable in [`gradle.properties` file](testOnSmallProject/gradle/gradle.properties) should be set to the compiler's
directory path to use by default. This option can be overridden by passing a flag `-Pkotlin.native.home=COMPILER_DIST/bin/kotlinc-native` to
any of the commands below.

Then, go to [`testOnSmallProject`](testOnSmallProject) and run:

* `./gradlew linkDebugExecutableLinuxX64` to only build executable;
* `./gradlew runDebugExecutableLinuxX64` to build and run executable in one shot.

To enable compiler's optimizations one should use slightly different tasks:
`./gradlew runReleaseExecutableLinuxX64` and `./gradlew linkReleaseExecutableLinuxX64` correspondingly.

Of course, these tasks works only for Linux-x64 platform. To build code for a different architecture use similar task with its name.

### Obtain result bitcode

For now, we don't know any working solution that uses Gradle. However, bitcode of the input code can be obtained via executing compiler
manually.

* First of all, `printBitcodePhase` in `backendCodegen`
  at `[TopLevelPhases.kt](../backend.native/compiler/ir/backend.native/src/org/jetbrains/kotlin/backend/konan/ToplevelPhases.kt) should be
  placed at the very end (as the last phase) to get bitcode _**after atomic ordering pass**_ is performed.
* Then it's enough to run:

```bash
COMPILER_DIST/bin/kotlinc-native testOnSmallProject/src/nativeMain/kotlin/Main.kt -linker-options="-latomic" -Xcached-library=COMPILER_DIST/klib/common/stdlib,COMPILER_DIST/klib/cache/linux_x64-gSTATIC/stdlib-cache -Xprint-bitcode 2>output-bitcode.txt
```

where `output-bitcode.txt` is an output file with the desired bitcode.<br/>
P. S. `-Xcached-library=...` flags are used to get rid of tons of useless libraries' code, so only test code bitcode representation will be
shown.

### Run simple benchmark (legacy)

To measure execution time of the input code built by compiler simple scripts can be used. They can be found
at `testOnSmallProject/scripts` directory.

* `avgTime.sh` is used for measuring command execution average time for the given repeats number.
* `measureCompiler.sh` executes measurements for all 4 combinations of compiler execution: manually / via Gradle and with / without
  optimizations enabled.

To get benchmark results simply run from `testOnSmallProject` directory:

```bash
./scripts/measureCompiler.sh COMPILER_DIST src/nativeMain/kotlin/Main.kt
```

Output will be shown in console.

This method of benchmarking _**is kind of legacy**_. Its main goal was to check all compiler executions are properly working and to compare
their performance in the simpliest way. To run more proper benchmarks, even for custom tests, `konanRun` can be used.

## Proper benchmarking

Proper benchmarking could be done using Kotlin project test framework.

* Firstly, bundle version of compiler should be built: run `./gradlew :kotlin-native:bundle` from the project root.
* Secondly, set desired atomic orderings
  in [ChangeAtomicOrdering.kt](../backend.native/compiler/ir/backend.native/src/org/jetbrains/kotlin/backend/konan/aopass/ChangeAtomicOrdering.kt)
  file.
* Then, go to [`kotlin-native/performance`](../performance) and start `ring` benchmarks:

    ```bash
    ../../gradlew :ring:konanRun -PnativeJson=output.json
    ```

  where benchmark results will be contained at `output.json`. To set up number of attempts to run each benchmark task
  pass `-Pattempts=5` flag (`5` here is for example, by default `20` is set), final result will be measured as average through the
  repeats.<br/>
  To run benchmarks exclusively for certain tasks use `--filter=Fibonacci.calcClassic` flag (`Fibonacci.calcClassic` is an example task
  name).<br/>
  Moreover, by default compilers optimizations are enabled. To disable them, simply pass `-PnativeBuildType=DEBUG` flag.

* Finally, run benchmarks as described above for different compiler configurations (i.e. with different atomic orderings being changed). For
  example, consider benchmark results in the section below. Then obtained result files (named `output-1.json` and `output-2.json` for
  example) can be compared via next command executed from the root directory:

    ```bash
    ./gradlew linux_x64PlatformLibs
    cd kotlin-native/tools/benchmarksAnalyzer
    ../../../gradlew build
    ./build/bin/linux/benchmarksAnalyzerReleaseExecutable/benchmarksAnalyzer.kexe output-1.json output-2.json -r html -o compare.html
    ```
  where `compare.html` is an analysis result file. Unfortunately, only two files at one time can be compared.

  P. S. Of course, commands above are actual for LinuxX64 platform, others will require corresponding names changed.

## Current benchmark results

Obtained analysis results can be found at [benchmarkReports](benchmarkReports) directory.

* `e` and `e2` stands for compiler runs, empty of any modifications;
* `seq` and `not-atomic` stand for replacing any accesses to `SequentiallyConsistent` and `NotAtomic`, correspondingly;
* `not-atomic-to-unordered` stands for replacing any accesses `NotAtomic` to `Unordered`, this is target research case.

So `vs` means comparison of compilers modifications (see their notation above).

### Interpretation

* `e` and `e2` are baselines. Besides, their comparison demonstrates how significant error between same compiler benchmarks can be. We
  achieved up to `45 %` difference on some tasks, however _**geometric mean**_ hasn't changed at all.
* `not-atomic` and `seq` are the extreme cases: the fastest and the slowest ones, correspondingly. Indeed, their geometric mean
  achieved `7.2 %` of expected difference. Difference between them and baseline are also reasonable: `6.6 %` for `seq` and `0 %`
  for `not-atomic`.
* `e-vs-not-atomic-to-unordered` showed, that the second modification of the compiler _**doesn't worsen the performance**_ on geometric
  average, difference is about `0 %`.

## How to add new benchmark

It's pretty straightforward. Just place your test in separate class
in [this directory](`../performance/ring/src/main/kotlin/org/jetbrains/ring`) and plug
into `baseBenchmarksSet` [here](../../kotlin-native/performance/ring/src/main/kotlin/main.kt).
