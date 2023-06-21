#!/usr/bin/env bash
set -e

measureUpub() {
    index=$1
    baseline_name="x2-size-30-attempts-baseline-$index"
    upubfixed_name="x2-size-30-attempts-upubfixed-$index"

    # run benchmarks
    # ./runPassBenchmark.sh "$baseline_name" "baseline.kt" "30"
    # ./runPassBenchmark.sh "$upubfixed_name" "upubfixed.kt" "30"

    # compile comparison
    ./buildBenchmarksAnalyzer.sh
    ./compareResults.sh "$upubfixed_name" "$baseline_name"
}

echo STARTED MEASURE BASELINE-VS-UPUB-FIXED
echo

measureUpub 1
# measureUpub 2
# measureUpub 3
# measureUpub 4
# measureUpub 5
# measureUpub 6
# measureUpub 7
# measureUpub 8
# measureUpub 9
# measureUpub 10

echo FINISHED MEASURE BASELINE-VS-UPUB-FIXED
echo
