#!/usr/bin/env bash
set -e

# usage: ./runPassBenchmarks.sh pass-name [pass-template-filename] [BUILD_ONLY / attempts number]
# examples: ./runPassBenchmarks.sh unordered
# examples: ./runPassBenchmarks.sh baseline2 baseline.kt
# examples: ./runPassBenchmarks.sh baseline-build baseline.kt BUILD_ONLY
# examples: ./runPassBenchmarks.sh baseline-build baseline.kt 50

pass_name=$1
pass_template_filename=$2

if [ -z "$2" ]; then
    pass_template_filename="$pass_name.kt"
fi

only_build_mode=false
attempts=""
if [ "$3" == "BUILD_ONLY" ]; then
    only_build_mode=true
elif [ "$3" != "" ]; then
    attempts="-Pattempts=$3"
fi

root_dir="../../../../"
pass_path=$root_dir/kotlin-native/backend.native/compiler/ir/backend.native/src/org/jetbrains/kotlin/backend/konan/aopass/ChangeAtomicOrdering.kt

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
sed -i 's/^\/\/ //g' "$pass_path"
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
echo RUN BENCHMARK
cd kotlin-native/performance
../../gradlew :konanRun -PnativeJson="$pass_name".json "$attempts"
../../gradlew -stop
echo FINISHED "$pass_name" benchmark
echo
