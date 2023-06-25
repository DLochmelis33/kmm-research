#!/usr/bin/env bash
set -e

root_dir="../../../../"

echo "STARTED benchmarksAnalyzer build"
echo

# we want to build analyzer tool using a standard compiler
# ./runPassBenchmark.sh baseline-build baseline.kt BUILD_ONLY

cd $root_dir
# ./gradlew linux_x64PlatformLibs
# --- mac
# ./gradlew macos_arm64PlatformLibs -PcheckXcodeVersion=false # no?
# ./gradlew macos_x64PlatformLibs -PcheckXcodeVersion=false
# --- mac
cd kotlin-native/tools/benchmarksAnalyzer
# ../../../gradlew build
../../../gradlew macosArm64Binaries # TRY

echo "FINISHED benchmarksAnalyzer build"
echo
