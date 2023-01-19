# Change Atomic Ordering Pass Benchmarking

Main goal is to _**change atomic ordering of memory accesses**_ (from `NotAtomic` to `Unordered`, for example) using an implemented bitcode pass in the Kotlin Native compiler and _**test the resulting bitcode and performance**_.

## Pass implementation

* See implementation of pass in [ChangeAtomicOrdering.kt](../backend.native/compiler/ir/backend.native/src/org/jetbrains/kotlin/backend/konan/aopass/ChangeAtomicOrdering.kt). By default, all `NotAtomic` accesses are replaced with `Unordered` ones;
* Pass wrapper `changeAtomicOrderingPhase` in [BitcodePhases.kt](../backend.native/compiler/ir/backend.native/src/org/jetbrains/kotlin/backend/konan/llvm/BitcodePhases.kt);
* The wrapper is called at `bitcodePostprocessingPhase` in [TopLevelPhases.kt](../backend.native/compiler/ir/backend.native/src/org/jetbrains/kotlin/backend/konan/ToplevelPhases.kt).

Also, several util functions were added to [LlvmUtils.kt](../backend.native/compiler/ir/backend.native/src/org/jetbrains/kotlin/backend/konan/llvm/LlvmUtils.kt).

## Compile a small project

One can build their own code using the modified compiler (i.e. with atomic ordering pass enabled), check output bitcode and benchmark the compiled program performance.

* Project directory can be found [here](testOnSmallProject).
* For now, the project consists of a single file [Main.kt](testOnSmallProject/src/nativeMain/kotlin/Main.kt). Currently, there is just simple arithmetics with elements of an array.

### Build modified compiler

Before testing the custom compiler it's important to make sure it's built! Run from the root ([kmm-research](../..)) directory:

```bash
./gradlew :kotlin-native:dist
```

Built compiler directory can be found in [../dist](../dist) (relative to this file). From now on, that directory will be referred to as `$COMPILER_DIST`.

### Use the custom compiler... manually

To built your code with the custom compiler run from this directory:

```bash
$COMPILER_DIST/bin/kotlinc-native -linker-options="-latomic" testOnSmallProject/src/nativeMain/kotlin/Main.kt -o output 
```

where output executable file is `output.kexe`. Also, `-opt` can be passed to the compiler to enable optimizations.<br/>
P. S. `-linker-options="-latomic"` is necessary, because atomic accesses can appear as a result of the atomic ordering pass.

### Use the custom compiler... with Gradle

The `kotlin.native.home` variable in [`gradle.properties` file](testOnSmallProject/gradle.properties) should be set to `$COMPILER_DIST`. This option can be overridden by passing a flag `-Pkotlin.native.home=$COMPILER_DIST` to any of the commands below.

Then, `cd` to [`testOnSmallProject`](testOnSmallProject) and run:

* `./gradlew linkDebugExecutableLinuxX64` to only build the project (find the executable in `build/bin/linuxX64/releaseExecutable`);
* `./gradlew runDebugExecutableLinuxX64` to build and run the project immediately.

To enable compiler optimizations one should use slightly different tasks: `./gradlew linkReleaseExecutableLinuxX64` and `./gradlew runReleaseExecutableLinuxX64` respectively.

Of course, these tasks work only for Linux-x64 platform. To build the project for a different architecture use a similar task with the corresponding name.

### Obtain result bitcode

For now, we don't know any working solution that uses Gradle. However, bitcode of the input code can be obtained via calling the compiler manually.

* First of all, `printBitcodePhase` in `backendCodegen` at [TopLevelPhases.kt](../backend.native/compiler/ir/backend.native/src/org/jetbrains/kotlin/backend/konan/ToplevelPhases.kt) should be placed at the very end (as the last phase) to get bitcode _**after atomic ordering pass**_ is performed.
* Then to get the program bitcode run from this directory:

```bash
$COMPILER_DIST/bin/kotlinc-native testOnSmallProject/src/nativeMain/kotlin/Main.kt -linker-options="-latomic" -Xcached-library=$COMPILER_DIST/klib/common/stdlib,$COMPILER_DIST/klib/cache/linux_x64-gSTATIC/stdlib-cache -Xprint-bitcode 2> output-bitcode.txt
```

where `output-bitcode.txt` is an output file with the desired bitcode. Sample bitcode obtained by this command can be found in `bitcode` directory.<br/>
P. S. `-Xcached-library=...` flags are used to get rid of tons of useless libraries' code, so that only project bitcode will be shown.

### Run a simple benchmark (legacy)

To measure execution time of the built program two simple scripts can be used. They can be found in `testOnSmallProject/scripts` directory.

* `avgTime.sh` is used for measuring average program execution time for a given number of repeats;
* `measureCompiler.sh` executes measurements for all 4 combinations of compiler execution: (manually / via Gradle) and (with / without) optimizations enabled.

To get benchmark results run from `testOnSmallProject` directory:

```bash
./scripts/measureCompiler.sh $COMPILER_DIST src/nativeMain/kotlin/Main.kt
```

Output will be shown in stdout.

This method of benchmarking _**is kind of legacy**_. Its main goal is to check that all variants for calling the compiler are properly working and to compare their performance in the simplest way. To run proper benchmarks, even for custom tests, `konanRun` from main compiler project should be used.

## Proper benchmarking

Proper benchmarking could be done using Kotlin project test framework.

* Firstly, bundle version of compiler should be built: run `./gradlew :kotlin-native:bundle` from the project root.
* Secondly, set desired atomic orderings in [ChangeAtomicOrdering.kt](../backend.native/compiler/ir/backend.native/src/org/jetbrains/kotlin/backend/konan/aopass/ChangeAtomicOrdering.kt) file.
* Then, go to [`kotlin-native/performance`](../performance) and start `ring` benchmarks:

    ```bash
    ../../gradlew :ring:konanRun -PnativeJson=output.json
    ```

  where benchmark results will be contained in `build/output.json`.
  * To set the number of repeats of each benchmark task, pass a `-Pattempts=5` flag (`5` here is for example, its default value is `20`).
  * To run benchmarks exclusively for certain tasks use a `--filter=Fibonacci.calcClassic` flag (`Fibonacci.calcClassic` is an example task name).
  * Compiler optimizations are enabled by default. To disable them, add a `-PnativeBuildType=DEBUG` flag.
* Run benchmarks as described above for different compiler configurations (i.e. with different atomic orderings being changed) and save the results.
* Finally, we will use a special tool to compare the obtained results. When benchmarking for the first time, it has to be built by executing the following commands from the root directory:
  ```bash
    ./gradlew linux_x64PlatformLibs
    cd kotlin-native/tools/benchmarksAnalyzer
    ../../../gradlew build
  ```
  Now two benchmark results (named `output-1.json` and `output-2.json` for example) can be compared using the following command:
  ```bash
    ./build/bin/linux/benchmarksAnalyzerReleaseExecutable/benchmarksAnalyzer.kexe output-1.json output-2.json -f -r html -o compare.html
  ```
  where `compare.html` is the analysis result file. Unfortunately, only two files can be compared at the same time.

More detailed information about using these benchmarks can be found [here](../HACKING.md).

P. S. Of course, the commands above are valid for LinuxX64 platform, others will require corresponding names changed.

## Current benchmark results

Some already performed analysis results can be found in [benchmarkReports](benchmarkReports) directory.

* `e` and `e2` stand for compiler runs, empty of any modifications;
* `seq` and `not-atomic` stand for replacing any accesses to `SequentiallyConsistent` and `NotAtomic` correspondingly;
* `not-atomic-to-unordered` stands for replacing any accesses `NotAtomic` to `Unordered`, this is target research case.

Naturally, `vs` means comparison of two compiler modifications. Additionally, 
* `full` means all benchmark tests were executed (not only `ring`); 
* `debug` means benchmarks were run with `-g` instead of `-opt` flag (i.e. with optimizations disabled).

### Interpretation

* `e` and `e2` are baselines. Their comparison demonstrates how significant the error between same compiler benchmarks can be. Up to `45 %` difference was achieved on some tasks, however the _**geometric mean**_ of tasks' scores didn't change at all.
* `not-atomic` and `seq` are the extreme cases: the fastest and the slowest ones, correspondingly (note that `not-atomic` run replaced sets `NotAtomic` ordering for _all_ accesses, even atomic ones, therefore likely producing an incorrect program). Indeed, their geometric mean scores differ by `7.2 %`. The differences between them and the baseline are also reasonable: `6.6 %` for `seq` and `0 %` for `not-atomic`.
* comparison of `debug` versions for `empty` and `seq` showed less than `1 %` difference, while the difference between `empty` and `empty-debug` was the largest observed &mdash; about `84 %`.
* `e-vs-not-atomic-to-unordered` (so as comparison of respective `full` and `debug` versions) showed that the second modification of the compiler _**doesn't worsen the performance**_ on average, the difference is about `0 %`.

## How to add a new benchmark test

It's pretty straightforward: place your test in a separate class in [this directory](`../performance/ring/src/main/kotlin/org/jetbrains/ring`) and plug into `baseBenchmarksSet` [here](../../kotlin-native/performance/ring/src/main/kotlin/main.kt).
