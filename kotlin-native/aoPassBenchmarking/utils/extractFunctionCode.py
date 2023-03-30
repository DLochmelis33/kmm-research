#!/usr/bin/env python3

import argparse

# usage: ./extractFunctionCode.py -p function-declaration-line-pattern -i file-to-search-at -o file-to-write-output-to
# example: ./extractFunctionCode.py -p 'define internal fastcc void @"kfun:#main(){}' -i ../testOnSmallProject/analyze-bitcode-tmp-files-dir/analyzed.ll -o extractedCode.ll


def extract_func_code(func_pattern, file):
    """Extracts the body of the function which declaration starts at the line containing @func_pattern."""
    balance = 0
    func_lines = []
    cnt = 0
    for line in file:
        cnt += 1
        if len(func_lines) == 0:
            if func_pattern in line:
                if line.rfind('{') == -1:
                    print("there is no { bracket at the end of pattern, abort")
                    exit(1)
                else:
                    func_lines.append(line)
                    balance += 1
                    continue
            else:
                continue
        func_lines.append(line)
        for symbol in line:
            if symbol == '{':
                balance += 1
            elif symbol == '}':
                balance -= 1
                if balance < 0:
                    print("incorrect {/} brackets sequence, abort")
                    exit(1)
                if balance == 0:
                    return ''.join(func_lines)
            else:
                continue
    print("pattern was not found, abort")
    exit(1)


parser = argparse.ArgumentParser()
parser.add_argument(
    "-p", "--pattern", help="Declaration of the function should start at the line containing this pattern.")
parser.add_argument("-i", "--input_file", help="File to search function at.")
parser.add_argument("-o", "--output_file",
                    help="File to write the extracted code to.")
args = parser.parse_args()

with open(args.input_file, 'r') as input_file:
    func_code = extract_func_code(args.pattern, input_file)
    with open(args.output_file, 'w') as output_file:
        output_file.write(func_code)
