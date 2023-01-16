compiler_dist=$1
program=$2

tmpfile='tmpfile'

echo manually run:
$compiler_dist/bin/kotlinc-native -linker-options="-latomic" $program -o $tmpfile
echo compiled
echo execution time: $(./scripts/avgTime.sh "./$tmpfile.kexe"); echo

echo manually -opt run:
$compiler_dist/bin/kotlinc-native -linker-options="-latomic" $program -opt -o $tmpfile
echo compiled
echo execution time: $(./scripts/avgTime.sh "./$tmpfile.kexe"); echo

gradle_executable='test-on-small-project'

echo Gradle run:
./gradlew clean &>/dev/null
./gradlew "-Pkotlin.native.home=$compiler_dist" linkDebugExecutableLinuxX64 &>/dev/null
echo compiled
echo execution time: $(./scripts/avgTime.sh "./build/bin/linuxX64/debugExecutable/$gradle_executable.kexe"); echo

echo Gradle -opt run:
./gradlew clean &>/dev/null
./gradlew "-Pkotlin.native.home=$compiler_dist" linkReleaseExecutableLinuxX64 &>/dev/null
echo compiled
echo execution time: $(./scripts/avgTime.sh "./build/bin/linuxX64/releaseExecutable/$gradle_executable.kexe"); echo
