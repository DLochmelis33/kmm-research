#!/usr/bin/env bash
set -e

# usage: ./compileTests.sh

tests=(
    Ring::ForLoops.charArrayLoop
    Ring::ForLoops.uLongArrayLoop
)

analysis_dir=../../benchmarkAnalysis

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
        output_dir="$test_dir/$conf_name"

        bitcode_dir="$output_dir/bitcode"
        bincode_dir="$output_dir/bincode"
        mkdir -p "$bitcode_dir" "$bincode_dir"

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
        baseline_dir="$test_dir/baseline"
        unordered_dir="$test_dir/unordered"

        diff_dir="$test_dir/diff"
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
