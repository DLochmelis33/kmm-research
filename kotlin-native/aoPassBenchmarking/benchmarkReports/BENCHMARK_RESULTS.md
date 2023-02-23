# Benchmark results

## File naming convention

Some already performed analysis results can be found in [macosArm64](macosArm64) and [linuxX64](linuxX64-legacy) (the latter is legacy for now) directories.

* `baseline` and `baseline[2,3,...]` stand for compiler runs, empty of any modifications;
* `unordered`, `monotonic` and `seq` stand for replacing any accesses `NotAtomic` to `Unordered`, `Monotonic` and `SequentiallyConsistent` correspondingly, the first one is a target research case;
* `all-to-seq` and `all-to-not-atomic` stand for replacing _all_ accesses to `SequentiallyConsistent` and `NotAtomic` correspondingly, these are extreme cases that can be used only for validation.

Naturally, `vs` means comparison of two compiler modifications. All benchmarks were run with `-opt` flag (i.e. with optimization enabled), this is a target case: changing modes of accesses mainly affects the number of available optimizations for the compiler.

## Interpretation: key points

While the geometric mean helps to estimate the improvement or deterioration on average, it is not very revealing: the most important are _**the specific microbenchmarks**_ on which the greatest deterioration is achieved. They demonstrate the real consequences of compiler changes, while other microbenchmarks, most likely, are simply not related to the changes made. That is why for each case both the geometric mean value for all tests and a list of specific tests with the greatest deterioration is given.

About _**the score**_. All score change percentages are relative to the largest of the compared values. Presumably, the score itself is calculated depending on the execution time of the benchmarks.

### baseline3-vs-baseline

Comparison of two baseline runs demonstrate how significant the error between same compiler benchmarks can be, i.e. the noise level. One of the current tasks is to get rid of such noise.

In this section, all test names are clickable and lead to source files with their code.

#### macosArm64

_Geometric mean:_ 0.00 ± 0.00 %

_Tests with an observable score difference:_ 
* [`Cinterop::int`](../../performance/cinterop/src/main/kotlin-native/org/jetbrains/cinteropBenchmarks/typesBenchmark.kt) [[C source code](../../performance/cinterop/src/nativeInterop/cinterop/types.def)] (27%)
* [`Cinterop::boxedInt`](../../performance/cinterop/src/main/kotlin-native/org/jetbrains/cinteropBenchmarks/typesBenchmark.kt) [[C source code](../../performance/cinterop/src/nativeInterop/cinterop/types.def)] (13%)
* [`Ring::ClassList.reduce`](../../performance/ring/src/main/kotlin/org/jetbrains/ring/ClassListBenchmark.kt) (5%)
* `swiftInterop::WeakRefBenchmark.aliveReference` [[Swift source code](../../performance/swiftinterop/swiftSrc/weakRefBenchmarks.swift)] (4%)
* [`Ring::LocalObjects.localArray`](../../performance/ring/src/main/kotlin/org/jetbrains/ring/LocalObjectsBenchmark.kt) (3%)
* [`Ring::DefaultArgument.testTwoOfTwo`](../../performance/ring/src/main/kotlin/org/jetbrains/ring/DefaultArgumentBenchmark.kt) (2.17%)
* [`Ring::Switch.testDenseEnumsSwitch`](../../performance/ring/src/main/kotlin/org/jetbrains/ring/SwitchBenchmark.kt) (2%)
* [`Ring::AbstractMethod.sortStringsWithComparator`](../../performance/ring/src/main/kotlin/org/jetbrains/ring/AbstractMethodBenchmark.kt) (2%)
* [`Ring::IntArray.countFiltered`](../../performance/ring/src/main/kotlin/org/jetbrains/ring/IntArrayBenchmark.kt) (1%)

### unordered-vs-baseline

This is _**a target research case**_: to study how replacing `NotAtomic` accesses with `Unordered` will degrade the performance of Kotlin Native programs. 

In this section, all test names are clickable and lead to source files with their code.

#### macosArm64

_Geometric mean:_ 0.14 ± 0.20 % of degradation

_Tests with the most significant score degradation:_
* [`Cinterop::boxedInt`](../../performance/cinterop/src/main/kotlin-native/org/jetbrains/cinteropBenchmarks/typesBenchmark.kt) [[C source code](../../performance/cinterop/src/nativeInterop/cinterop/types.def)] (37%)
* [`Ring::CompanionObject.invokeRegularFunction`](../../performance/ring/src/main/kotlin/org/jetbrains/ring/CompanionObjectBenchmark.kt) (19%)
* [`Ring::Calls.parameterBoxUnboxFolding`](../../performance/ring/src/main/kotlin/org/jetbrains/ring/CallsBenchmark.kt) (18%)
* [`Ring::ForLoops.intArrayIndicesLoop`](../../performance/ring/src/main/kotlin/org/jetbrains/ring/ForLoopsBenchmark.kt) (17%)
* [`Ring::ForLoops.intArrayLoop`](../../performance/ring/src/main/kotlin/org/jetbrains/ring/ForLoopsBenchmark.kt) (17%)
* [`Ring::ForLoops.uIntArrayIndicesLoop`](../../performance/ring/src/main/kotlin/org/jetbrains/ring/ForLoopsBenchmark.kt) (13%)
* [`Ring::String.summarizeSplittedCsv`](../../performance/ring/src/main/kotlin/org/jetbrains/ring/StringBenchmark.kt) (9%)
* [`Ring::ChainableBenchmark.testChainable`](../../performance/ring/src/main/kotlin/org/jetbrains/ring/ChainableBenchmark.kt) (9%)
* [`Cinterop::stringToC`](../../performance/cinterop/src/main/kotlin-native/org/jetbrains/cinteropBenchmarks/typesBenchmark.kt) [[C source code](../../performance/cinterop/src/nativeInterop/cinterop/types.def)] (9%)
* [`Ring::ClassList.countWithLambda`](../../performance/ring/src/main/kotlin/org/jetbrains/ring/ClassListBenchmark.kt) (6%)
* [`Ring::String.stringConcat`](../../performance/ring/src/main/kotlin/org/jetbrains/ring/StringBenchmark.kt) (6%)
* [`Ring::BunnymarkBenchmark.testBunnymark`](../../performance/ring/src/main/kotlin/org/jetbrains/ring/BunnymarkBenchmark.kt) (5%)
* other 24 tests with score degradation achieved < 5% of change

### monotonic-vs-baseline

This is a further research case: to check how replacing `NotAtomic` accesses with an even stronger `Monotonic` mode will degrade the performance.

#### macosArm64

_Geometric mean:_ 5.06 ± 0.19 % of degradation

_Tests with the most significant score degradation:_
* `Ring::Inheritance.baseCalls` (53%)
* `Ring::BunnymarkBenchmark.testBunnymark` (37%)
* `Cinterop::boxedInt` (35%)
* `Ring::Calls.interfaceMethodHexamorphic` (29%)
* `Ring::CompanionObject.invokeRegularFunction` (27%)
* `Ring::Switch.testSealedWhenSwitch` (24%)
* `Ring::Switch.testObjConstSwitch` (23%)
* `Ring::Loop.arrayListForeachLoop` (21%)
* `Ring::Loop.arrayListLoop` (21%)
* `Ring::Euler.problem1bySequence` (20%)
* 34 tests with score degradation achieved 10-20% of change, other tests achieved < 10% degradation 

### seq-vs-baseline

This is a further research case too: to check how replacing `NotAtomic` accesses with the strongest `SequentiallyConsistent` mode will degrade the performance.

#### macosArm64

_Geometric mean:_ 57.17 ± 0.09 % of degradation

_Tests with the most significant score degradation:_
* `Ring::Inheritance.baseCalls` (91%)
* `Ring::ArrayCopyBenchmark.copyInSameArray` (90%)
* `Ring::DefaultArgument.testEightOfEight` (87%)
* `Ring::AllocationBenchmark.allocateObjects` (86%)
* `Cinterop::boxedInt` (85%)
* `Ring::ChainableBenchmark.testChainable` (84%)
* `Ring::ParameterNotNull.invokeEightArgsWithoutNullCheck` (83%)
* `Ring::ClassList.countWithLambda` (83%)
* `Ring::ParameterNotNull.invokeEightArgsWithNullCheck` (83%)
* `Ring::BunnymarkBenchmark.testBunnymark` (83%)
* `Ring::CompanionObject.invokeRegularFunction` (80%)
* 127 tests with score degradation achieved 50-80% of change, other tests achieved < 50% degradation
