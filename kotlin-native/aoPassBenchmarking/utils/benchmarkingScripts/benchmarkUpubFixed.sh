#!/usr/bin/env bash
set -e

measureUpub() {
    index=$1
    baseline_name="test-x2-size-30-attempts-baseline-$index"
    upubfixed_name="test-x2-size-30-attempts-upubfixed-$index"

    # run benchmarks
    ./runPassBenchmark.sh "$baseline_name" "baseline.kt" "30"
    ./runPassBenchmark.sh "$upubfixed_name" "upubfixed.kt" "30"

    # compile comparison
    ./buildBenchmarksAnalyzer.sh
    ./compareResults.sh "$upubfixed_name" "$baseline_name"
}

echo STARTED MEASURE BASELINE-VS-UPUB-FIXED
echo

for i in {1..10}; do
    measureUpub "$i"
done

echo FINISHED MEASURE BASELINE-VS-UPUB-FIXED
echo
