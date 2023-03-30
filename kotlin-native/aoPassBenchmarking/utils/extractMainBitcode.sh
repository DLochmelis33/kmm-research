#!/usr/bin/env bash
set -e

# usage: ./extractMainBitcode.sh output-file
# example: ./extractMainBitcode.sh ../testOnSmallProject/bitcode/baseline.ll

if [[ "$1" == "" ]]; then
    echo "missing output file argument"
    exit 0
fi

tmp_dir="../testOnSmallProject/analyze-bitcode-tmp-files-dir-unordered"
input_file="../testOnSmallProject/src/nativeMain/kotlin/Main.kt"
program_output_file="$tmp_dir/program.kexe"
bitcode_file="$tmp_dir/program.kt.bc"
tmp_ll_file="$tmp_dir/program.kt.ll"
output_file="$1"
search_pattern='define internal fastcc void @"kfun:#main(){}'

echo "Attempting to extract main bitcode..."
echo

mkdir $tmp_dir
../../dist/bin/kotlinc-native $input_file -opt -Xtemporary-files-dir=$tmp_dir -o $program_output_file
llvm-dis $bitcode_file -o $tmp_ll_file
./extractFunctionCode.py -p "$search_pattern" -i $tmp_ll_file -o "$output_file"
rm -rf $tmp_dir

echo "Successfully extracted main bitcode into $output_file"
