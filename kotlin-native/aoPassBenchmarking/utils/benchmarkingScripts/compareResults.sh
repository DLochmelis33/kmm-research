#!/usr/bin/env bash
set -e

# usage: ./compareResults.sh target_pass_name baseline_pass_name
# example:
# ./compareResults.sh unordered baseline

is_mac=$(./validateMachineType.sh)

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
if [ "$is_mac" == true ]; then
    benchmarksAnalyzer="./build/bin/macosArm64/benchmarksAnalyzerReleaseExecutable/benchmarksAnalyzer.kexe"
else
    benchmarksAnalyzer="./build/bin/linux/benchmarksAnalyzerReleaseExecutable/benchmarksAnalyzer.kexe"
fi
$benchmarksAnalyzer $sources_dir/"$target_pass_name".json $sources_dir/"$baseline_pass_name".json -f -r html -o $result_dir/"$result_filename"

echo COMPILED "$result_filename"
echo
