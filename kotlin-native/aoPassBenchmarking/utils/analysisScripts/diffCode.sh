#!/usr/bin/env bash
set -e

# usage: ./diffCode.sh baseline_file target_file output_file

baseline_file=$1
target_file=$2
output_file=$3

diff -ud --color=never "$baseline_file" "$target_file" >"$output_file" || true

echo "Saved diff of $baseline_file and $target_file files to $output_file"
echo
