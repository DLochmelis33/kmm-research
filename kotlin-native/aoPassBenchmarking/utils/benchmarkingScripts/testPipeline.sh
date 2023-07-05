#!/usr/bin/env bash
set -e

test() {
    test_name="test"

    # benchmark baseline compiler on a pair of test
    ./runPassBenchmark.sh $test_name baseline 5 :ring:konanRun "--filter=ForLoops.intArrayLoop,ClassList.copy"

    ./buildBenchmarksAnalyzer.sh

    # compile comparison (the no difference comparison is expected)
    ./compareResults.sh $test_name $test_name
}

echo STARTED TEST BENCHMARKING
echo

test

echo FINISHED TEST BENCHMARKING
echo
