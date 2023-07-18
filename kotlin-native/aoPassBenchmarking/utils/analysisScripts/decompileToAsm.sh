#!/usr/bin/env bash
set -e

# usage: ./decompileToAsm.sh executable_file.kexe output_directory
# example:
# ./decompileToAsm.sh main.kexe output/bincode

exe_file=$1
output_dir=$2
if [[ "$exe_file" == "" || "$exe_file" != *.kexe ]]; then
    echo "missing an executable_file.kexe argument"
    exit 1
fi
if [[ "$output_dir" == "" ]]; then
    echo "missing an output_directory argument"
    exit 1
fi

output_file=$output_dir/bincode.asm
mainfun_output_file=$output_dir/mainfun_bincode.asm

extractMainAsm() {
    asm_file=$1
    mainfun_asm_file=$2
    awk '/<kfun:#main\(\)\{\}>:/{found=1} found; /^$/ && found{exit}' "$asm_file" >"$mainfun_asm_file"
}

llvm-objdump -dC --no-leading-addr --no-show-raw-insn "$exe_file" >"$output_file"
extractMainAsm "$output_file" "$mainfun_output_file"

echo "Decompiled $exe_file to asm code in $output_dir"
echo
