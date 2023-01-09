compiler=$1
program=$2

tmpfile='haha'

echo cli run:
$compiler/bin/kotlinc-native -linker-options="-latomic" $program -o $tmpfile
echo compiled
echo time: $(./scripts/avgTime.sh "./$tmpfile.kexe"); echo

echo cli -opt run:
$compiler/bin/kotlinc-native -linker-options="-latomic" $program -opt -o $tmpfile
echo compiled
echo time: $(./scripts/avgTime.sh "./$tmpfile.kexe"); echo

gradle_executable='komem-tests'

echo gradle run:
./gradlew clean &>/dev/null
./gradlew "-Pkotlin.native.home=$compiler" linkDebugExecutableLinuxX64 &>/dev/null
echo compiled
echo time: $(./scripts/avgTime.sh "./build/bin/linuxX64/debugExecutable/$gradle_executable.kexe"); echo

echo gradle -opt run:
./gradlew clean &>/dev/null
./gradlew "-Pkotlin.native.home=$compiler" -Pbuild_flags=\"-opt\" linkDebugExecutableLinuxX64 &>/dev/null
echo compiled
echo time: $(./scripts/avgTime.sh "./build/bin/linuxX64/debugExecutable/$gradle_executable.kexe"); echo
