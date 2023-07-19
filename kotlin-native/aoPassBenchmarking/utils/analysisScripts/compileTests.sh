#!/usr/bin/env bash
set -e

# usage: ./compileTests.sh

tests=(
    # Linux slowdowns
    # 20-...%
    Ring::Fibonacci.calcClassic            # 70,86%
    Ring::Euler.problem9                   # 23,62%
    Ring::Calls.interfaceMethodHexamorphic # 20,76%
    # 10-20 %
    Ring::IntArray.countFilteredSomeManual
    Ring::MultithreadedLoops.updateSharedStructCounter100Workers
    Ring::String.summarizeSplittedCsv # 11,47% on Mac
    Ring::MultithreadedLoops.sumString5Workers
    Ring::MultithreadedLoops.sumSharedString5Workers
    Ring::Switch.testConstSwitch
    Ring::Switch.testObjConstSwitch
    Ring::MultithreadedLoops.sumSharedULongArray100Workers
    Ring::MultithreadedLoops.sumCharArray100Workers
    Ring::CompanionObject.invokeRegularFunction # 19,23% on Mac
    Ring::MultithreadedLoops.sumSharedCharArray100Workers
    # 5-10 %
    Ring::Switch.testDenseIntSwitch
    Ring::MultithreadedLoops.updateSharedStructCounter5Workers
    Ring::MultithreadedLoops.sumCharArray5Workers
    Ring::MultithreadedLoops.sumSharedCharArray5Workers
    Ring::MultithreadedLoops.sumSharedULongArray5Workers
    Ring::IntStream.filterAndMap
    Ring::MultithreadedLoops.sumULongArray5Workers
    Ring::Calls.interfaceMethodBimorphic
    Ring::MultithreadedLoops.sumUIntArrayByIndices100Workers
    Ring::Lambda.noncapturingLambdaNoInline
    Ring::ParameterNotNull.invokeEightArgsWithoutNullCheck
    Ring::MultithreadedLoops.sumSharedString20Workers
    Ring::PrimeList.calcDirect
    Ring::MultithreadedLoops.sumString20Workers
    Ring::ParameterNotNull.invokeOneArgWithNullCheck
    Ring::Lambda.capturingLambdaNoInline
    Ring::ClassList.copy
    Ring::IntStream.filterAndCount

    # Linux improvements
    # -(5-10) %
    Ring::MultithreadedLoops.sumIntArray5Workers
    Ring::Switch.testSparseIntSwitch
    Ring::Calls.interfaceMethodTrimorphic
    Ring::MultithreadedLoops.sumIntArray20Workers
    Ring::MultithreadedLoops.sumSharedIntArray20Workers
    Ring::Loop.arrayLoop
    # -(10-...)%
    Ring::MultithreadedLoops.updateSharedStructCounter20Workers # -12,92%
    Ring::MultithreadedLoops.sumSharedIntArray100Workers        # -12,99%
    Ring::MultithreadedLoops.sumIntArray100Workers              # -13,47%
    Ring::MultithreadedLoops.sumStringByIndices5Workers         # -14,22%
    Ring::ForLoops.stringLoop                                   # -33,19%
    Ring::Fibonacci.calc                                        # -41,45%
    Ring::ForLoops.uLongArrayLoop                               # -46,26% / 10,51% on Mac
    Ring::ForLoops.charArrayLoop                                # -49,13%
    Ring::Inline.calculateGeneric                               # -49,14%
    Ring::Lambda.mutatingLambda                                 # -49,15%
    Ring::Lambda.methodReference                                # -49,24%
    Ring::Inline.calculate                                      # -49,77%

    # unique Mac slowdowns, 5-... %
    Ring::ForLoops.intArrayLoop                            # 20,36%
    Ring::ChainableBenchmark.testChainable                 # 9,92%
    Ring::MultithreadedLoops.sumIntArrayByIndices20Workers # 6,10%
    Ring::MultithreadedLoops.sumIntArrayByIndices5Workers  # 5,73%
    Ring::ForLoops.intArrayIndicesLoop                     # 5,46%
    Ring::BunnymarkBenchmark.testBunnymark                 # 5,15%

    # unique Mac improvements, -(5-...) %
    Ring::OctoTest # -8,09%
)

analysis_dir=../../benchmarkAnalysis

# get machine type
cd ../benchmarkingScripts
is_mac=$(./validateMachineType.sh)
cd ../analysisScripts
if [ "$is_mac" == true ]; then
    machine_name="macosArm64"
else
    machine_name="linuxX64"
fi

buildConf() {
    conf=$1
    cd ../benchmarkingScripts
    ./runPassBenchmark.sh "$conf"-build "$conf".kt BUILD_ONLY
    cd ../analysisScripts
}

compileTestsInConfiguration() {
    conf_name=$1
    buildConf "$conf_name"

    echo "--------------------------------"
    echo

    for test_name in "${tests[@]}"; do
        test_dir="$analysis_dir/$test_name"
        output_dir="$test_dir/$machine_name/$conf_name"

        bitcode_dir="$output_dir/bitcode"
        bincode_dir="$output_dir/bincode"
        mkdir -p "$output_dir" "$bitcode_dir" "$bincode_dir"

        ./compileToExeWithBitcode.sh "$test_dir/Main.kt" "$output_dir" "$bitcode_dir"
        ./decompileToAsm.sh "$output_dir/main.kexe" "$bincode_dir"

        echo "--------------------------------"
        echo
    done

    echo "COMPILED tests in $conf_name configuration"
    echo
}

diffBitcode() {
    baseline_dir=$1
    unordered_dir=$2
    output_dir=$3
    name=$4

    ./diffCode.sh "$baseline_dir/bitcode/$name.ll" "$unordered_dir/bitcode/$name.ll" "$output_dir/${name}_diff.ll"
}

diffBincode() {
    baseline_dir=$1
    unordered_dir=$2
    output_dir=$3
    name=$4
    output_file="$output_dir/${name}_diff.asm"

    ./diffCode.sh "$baseline_dir/bincode/$name.asm" "$unordered_dir/bincode/$name.asm" "$output_file"
    ./removeNumericDiff.py -i "$output_file" -o "$output_dir/${name}_cleared_diff.asm"

    echo "Cleared bincode diff of $output_file"
    echo
}

compileDiff() {
    echo "--------------------------------"
    echo

    for test_name in "${tests[@]}"; do
        test_dir="$analysis_dir/$test_name"
        baseline_dir="$test_dir/$machine_name/baseline"
        unordered_dir="$test_dir/$machine_name/unordered"

        diff_dir="$test_dir/$machine_name/diff"
        bitcode_diff_dir="$diff_dir/bitcode"
        bincode_diff_dir="$diff_dir/bincode"
        mkdir -p "$bitcode_diff_dir" "$bincode_diff_dir"

        diffBitcode "$baseline_dir" "$unordered_dir" "$bitcode_diff_dir" "bitcode"
        diffBitcode "$baseline_dir" "$unordered_dir" "$bitcode_diff_dir" "mainfun_bitcode"

        diffBincode "$baseline_dir" "$unordered_dir" "$bincode_diff_dir" "bincode"
        diffBincode "$baseline_dir" "$unordered_dir" "$bincode_diff_dir" "mainfun_bincode"

        echo "--------------------------------"
        echo
    done

    echo "COMPILED diff for all tests"
    echo
}

compileTestsInConfiguration baseline
compileTestsInConfiguration unordered
compileDiff
