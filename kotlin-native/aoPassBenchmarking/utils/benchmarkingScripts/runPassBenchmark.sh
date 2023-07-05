#!/usr/bin/env bash
set -e

# usage: ./runPassBenchmark.sh configuration_name <baseline / upubfixed_primary / upubfixed_extended> [BUILD_ONLY / attempts_number] [test_task] [filter_tests]
# examples:
# ./runPassBenchmark.sh baseline2 baseline
# ./runPassBenchmark.sh baseline-build baseline BUILD_ONLY
# ./runPassBenchmark.sh 30-attempts baseline 30
# ./runPassBenchmark.sh 30-attempts-cinterop baseline 30 :cinterop:konanRun
# ./runPassBenchmark.sh 30-attempts-int-cinterop baseline 30 :cinterop:konanRun --filter=int,boxedInt
# ./runPassBenchmark.sh 30-attempts-multithreading baseline 30 :ring:konanRun --filterRegex=MultithreadedLoops.*

applyTemplateFile() {
    template=$1
    dist_path=$2

    cp ../passTemplates/"$template" "$dist_path"

    if [ "$is_mac" == true ]; then
        sed -i'.sedtmp' -e 's/^\/\/ //g' "$dist_path"
        rm "$dist_path.sedtmp"
    else
        sed -i 's/^\/\/ //g' "$dist_path"
    fi
}

is_mac=$(./validateMachineType.sh)

configuration_name=$1
configuration=$2
attempts_number=$3
test_task=$4
filter_tests=$5

if [ "$configuration" != "baseline" ] && [ "$configuration" != "upubfixed_primary" ] && [ "$configuration" != "upubfixed_extended" ]; then
    echo "unknown configuration: $configuration"
    exit 1
fi  

if [ -z "$configuration" ]; then
    echo "no configuration specified"
    exit 1
fi

run_args=()

if [ "$test_task" != "" ]; then
    run_args+=("$test_task")
    run_args+=(--verbose)
    # "--verbose" provides better progress tracking for separate tasks, but
    # causes additional printing between run iterations, that might potentially impact the results
else
    run_args+=(:konanRun)
fi

run_args+=(-PnativeJson="$configuration_name".json)

only_build_mode=false
if [ "$attempts_number" == "BUILD_ONLY" ]; then
    only_build_mode=true
elif [ "$attempts_number" != "" ]; then
    run_args+=("-Pattempts=$attempts_number")
fi

if [[ "$filter_tests" == "--filter="* ]] || [[ "$filter_tests" == "--filterRegex="* ]]; then
    run_args+=("$filter_tests")
elif [ "$filter_tests" != "" ]; then
    echo "invalid filter argument"
    exit 1
fi

if [ "$only_build_mode" == true ]; then
    echo STARTED "$configuration_name" BUILD
else
    echo STARTED "$configuration_name" BENCHMARK
fi
echo

root_dir="../../../../"

# extract configuration template files into source files
echo SET "$configuration_name" configuration

applyTemplateFile "$configuration/ObjectOps.cpp" "$root_dir/kotlin-native/runtime/src/mm/cpp/ObjectOps.cpp"
applyTemplateFile "$configuration/IrToBitcode.kt" "$root_dir/kotlin-native/backend.native/compiler/ir/backend.native/src/org/jetbrains/kotlin/backend/konan/llvm/IrToBitcode.kt"

cd $root_dir
echo now at: "$(pwd)"
echo

# clean and (re)build project
echo BUILDING
./gradlew clean
./gradlew :kotlin-native:bundle
./gradlew -stop
echo SUCCESSFULLY BUILT
echo

if [ "$only_build_mode" == true ]; then
    echo FINISHED "$configuration_name" BUILD
    exit 0
fi

# run full benchmark and save the result into kotlin-native/performance/build directory
echo RUN "$configuration_name" BENCHMARK
cd kotlin-native/performance
../../gradlew "${run_args[@]}"
../../gradlew -stop
echo FINISHED "$configuration_name" benchmark
echo
