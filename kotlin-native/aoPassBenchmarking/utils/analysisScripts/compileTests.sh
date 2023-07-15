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

    for test_name in "${tests[@]}"; do
        test_dir="$analysis_dir/$test_name"
        output_dir="$test_dir/$conf_name"

        ./compileToExeWithBitcode.sh "$test_dir/Main.kt" "$output_dir"
        ./decompileToAsm.sh "$output_dir/main.kexe" "$output_dir"

        echo "--------------------------------"
        echo
    done

    echo "COMPILED tests in $conf_name configuration"
    echo
}

echo "--------------------------------"
echo

compileTestsInConfiguration baseline
compileTestsInConfiguration unordered
