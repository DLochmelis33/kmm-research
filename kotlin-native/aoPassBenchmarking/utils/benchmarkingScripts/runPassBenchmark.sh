#!/usr/bin/env bash
set -e

# usage: ./runPassBenchmarks.sh pass-name [pass-template-filename] [BUILD_ONLY / attempts number] [test task] [filter tests]
# examples: ./runPassBenchmarks.sh unordered
# examples: ./runPassBenchmarks.sh baseline2 baseline.kt
# examples: ./runPassBenchmarks.sh baseline-build baseline.kt BUILD_ONLY
# examples: ./runPassBenchmarks.sh baseline-build baseline.kt 30
# examples: ./runPassBenchmarks.sh baseline-build baseline.kt 30 :cinterop:konanRun
# examples: ./runPassBenchmarks.sh baseline-build baseline.kt 30 :cinterop:konanRun --filter=int,boxedInt

pass_name=$1
pass_template_filename=$2

if [ -z "$2" ]; then
    pass_template_filename="$pass_name.kt"
fi

run_args=()

if [ "$4" != "" ]; then
    run_args+=("$4")
    run_args+=(--verbose)
else
    run_args+=(:konanRun)
fi

run_args+=(-PnativeJson="$pass_name".json)

only_build_mode=false
if [ "$3" == "BUILD_ONLY" ]; then
    only_build_mode=true
elif [ "$3" != "" ]; then
    run_args+=("-Pattempts=$3")
fi

if [[ "$5" != "" ]]; then
    run_args+=("$5")
fi

root_dir="../../../../"
pass_path=$root_dir/kotlin-native/runtime/src/mm/cpp/ObjectOps.cpp
# pass_path=$root_dir/kotlin-native/backend.native/compiler/ir/backend.native/src/org/jetbrains/kotlin/backend/konan/aopass/ChangeAtomicOrdering.kt

if [ "$only_build_mode" == true ]; then
    echo STARTED "$pass_name" BUILD
else
    echo STARTED "$pass_name" benchmark
fi
echo

# extract pass template into ChangeAtomicOrdering.kt source file
echo SET "$pass_name" pass
echo pass source template: "$pass_template_filename"
cp ../passTemplates/"$pass_template_filename" "$pass_path"
# sed -i 's/^\/\/ //g' "$pass_path"
# --- mac
sed -i'.sedtmp' -e 's/^\/\/ //g' "$pass_path"
rm "$pass_path.sedtmp"
# --- mac
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
    exit 0
fi

# run full benchmark and save the result in kotlin-native/performance/build directory
echo RUN BENCHMARK "$pass_name"
cd kotlin-native/performance
../../gradlew "${run_args[@]}"
../../gradlew -stop
echo FINISHED "$pass_name" benchmark
echo
