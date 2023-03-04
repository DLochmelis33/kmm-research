#!/usr/bin/env bash
set -e

# usage: ./compareResults.sh target-pass-name baseline-pass-name
# example: ./compareResults.sh unordered baseline

target_pass_name=$1
baseline_pass_name=$2
result_filename="$target_pass_name"-vs-"$baseline_pass_name".html

root_dir="../../../.."
cd $root_dir/kotlin-native/tools/benchmarksAnalyzer

result_dir="results"
mkdir -p $result_dir

# source benchmark results are expected to be found at kotlin-native/performance/build directory
sources_dir="../../performance/build"
# compile comparison result file into kotlin-native/tools/benchmarksAnalyzer/results directory
./build/bin/linux/benchmarksAnalyzerReleaseExecutable/benchmarksAnalyzer.kexe $sources_dir/"$target_pass_name".json $sources_dir/"$baseline_pass_name".json -f -r html -o $result_dir/"$result_filename"

echo COMPILED "$result_filename"
echo
