#!/usr/bin/env bash
set -e

measureUpub() {
    conf_prefix="x2-size-30-attempts"
    baseline_name="$conf_prefix-baseline"
    baseline2_name="$conf_prefix-baseline2"
    upubfixed_primary_name="$conf_prefix-upubfixed_primary"
    upubfixed_extended_name="$conf_prefix-upubfixed_extended"

    # run benchmarks
    ./runPassBenchmark.sh "$baseline2_name" "baseline" "30"
    ./runPassBenchmark.sh "$baseline_name" "baseline" "30"
    ./runPassBenchmark.sh "$upubfixed_primary_name" "upubfixed_primary" "30"
    ./runPassBenchmark.sh "$upubfixed_extended_name" "upubfixed_extended" "30"

    # compile comparison
    ./buildBenchmarksAnalyzer.sh
    ./compareResults.sh "$upubfixed_primary_name" "$baseline_name"
    ./compareResults.sh "$upubfixed_extended_name" "$baseline_name"
    ./compareResults.sh "$upubfixed_extended_name" "$upubfixed_primary_name"
    ./compareResults.sh "$baseline2_name" "$baseline_name"
}

echo STARTED MEASURE BASELINE-VS-UPUB-FIXED
echo

measureUpub

echo FINISHED MEASURE BASELINE-VS-UPUB-FIXED
echo
