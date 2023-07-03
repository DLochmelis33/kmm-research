#!/usr/bin/env bash
set -e

measureUnordered() {
    index=$1
    baseline_name="x2-size-30-attempts-baseline-${index}"
    unordered_name="x2-size-30-attempts-unordered-${index}"

    echo STARTED ITERATION \#"$index"

    # run baseline a couple of times
    ./runPassBenchmark.sh "$baseline_name" "baseline.kt" "30"
    ./runPassBenchmark.sh "$unordered_name" "unordered.kt" "30"

    ./buildBenchmarksAnalyzer.sh

    # compile comparison
    ./compareResults.sh "$unordered_name" "$baseline_name"

    echo FINISHED ITERATION \#"$index"
}

echo STARTED BASELINE-VS-UNORDERED BENCHMARKING
echo

for i in {1..20}; do
    measureUnordered "$i"
done

echo FINISHED BASELINE-VS-UNORDERED BENCHMARKING
echo
