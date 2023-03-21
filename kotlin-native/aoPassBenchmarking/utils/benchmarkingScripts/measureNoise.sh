#!/usr/bin/env bash
set -e

measureNoise() {
    attempts=$1
    baseline2_name="$attempts-attempts-baseline2"
    baseline_name="$attempts-attempts-baseline"

    # run baseline a couple of times
    ./runPassBenchmark.sh "$baseline2_name" "baseline.kt" "$attempts"
    ./runPassBenchmark.sh "$baseline_name" "baseline.kt" "$attempts"

    # compile comparison
    ./compareResults.sh "$baseline2_name" "$baseline_name"
}

echo STARTED MEASURE NOISE BENCHMARKING
echo

./buildBenchmarksAnalyzer.sh

measureNoise 30
measureNoise 50
measureNoise 100

echo FINISHED MEASURE NOISE BENCHMARKING
echo
