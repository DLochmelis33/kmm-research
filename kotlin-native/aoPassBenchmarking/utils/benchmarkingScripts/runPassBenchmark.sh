#!/usr/bin/env bash
set -e

# usage: ./runPassBenchmark.sh pass_name [pass_template_filename] [BUILD_ONLY / attempts_number] [test_task] [filter_tests]
# examples:
# ./runPassBenchmark.sh unordered
# ./runPassBenchmark.sh baseline2 baseline.kt
# ./runPassBenchmark.sh baseline-build baseline.kt BUILD_ONLY
# ./runPassBenchmark.sh 30-attempts baseline.kt 30
# ./runPassBenchmark.sh 30-attempts-cinterop baseline.kt 30 :cinterop:konanRun
# ./runPassBenchmark.sh 30-attempts-int-cinterop baseline.kt 30 :cinterop:konanRun --filter=int,boxedInt
# ./runPassBenchmark.sh 30-attempts-multithreading baseline.kt 30 :ring:konanRun --filterRegex=MultithreadedLoops.*

is_mac=$(./validateMachineType.sh)

pass_name=$1
pass_template_filename=$2
attempts_number=$3
test_task=$4
filter_tests=$5

if [ -z "$pass_template_filename" ]; then
    pass_template_filename="$pass_name.kt"
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

run_args+=(-PnativeJson="$pass_name".json)

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

root_dir="../../../../"
pass_path=$root_dir/kotlin-native/runtime/src/mm/cpp/ObjectOps.cpp
# pass_path=$root_dir/kotlin-native/backend.native/compiler/ir/backend.native/src/org/jetbrains/kotlin/backend/konan/aopass/ChangeAtomicOrdering.kt

if [ "$only_build_mode" == true ]; then
    echo STARTED "$pass_name" BUILD
else
    echo STARTED "$pass_name" BENCHMARK
fi
echo

# extract pass template into ChangeAtomicOrdering.kt source file
echo SET "$pass_name" pass
echo pass source template: "$pass_template_filename"
cp ../passTemplates/"$pass_template_filename" "$pass_path"
if [ "$is_mac" == true ]; then
    sed -i'.sedtmp' -e 's/^\/\/ //g' "$pass_path"
    rm "$pass_path.sedtmp"
else
    sed -i 's/^\/\/ //g' "$pass_path"
fi
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
    echo FINISHED "$pass_name" BUILD
    exit 0
fi

# run full benchmark and save the result into kotlin-native/performance/build directory
echo RUN "$pass_name" BENCHMARK
cd kotlin-native/performance
../../gradlew "${run_args[@]}"
../../gradlew -stop
echo FINISHED "$pass_name" benchmark
echo
