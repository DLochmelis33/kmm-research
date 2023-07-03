#!/usr/bin/env bash
set -e

echo STARTED ALL PASSES BENCHMARKING
echo

./runPassBenchmark.sh "baseline2" "baseline.kt"
./runPassBenchmark.sh "baseline3" "baseline.kt"
# at this point, the environment is highly likely stable
./runPassBenchmark.sh "unordered"
./runPassBenchmark.sh "monotonic"
./runPassBenchmark.sh "seq"
./runPassBenchmark.sh "baseline"
./runPassBenchmark.sh "all-to-seq"
./runPassBenchmark.sh "all-to-not-atomic"

./buildBenchmarksAnalyzer.sh

# target comparisons
./compareResults.sh baseline2 baseline
./compareResults.sh baseline3 baseline
./compareResults.sh unordered baseline
./compareResults.sh monotonic baseline
./compareResults.sh seq baseline

# extra comparisons
./compareResults.sh monotonic unordered
./compareResults.sh all-to-seq baseline
./compareResults.sh all-to-not-atomic baseline
./compareResults.sh all-to-seq all-to-not-atomic

echo FINISHED ALL PASSES BENCHMARKING
echo
