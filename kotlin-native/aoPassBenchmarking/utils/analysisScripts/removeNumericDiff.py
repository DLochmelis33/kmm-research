#!/usr/bin/env python3

import argparse
from typing import List, Tuple
import re

# usage: ./removeNumericDiff.py -i input-file-with-diff -o output-file-to-write-cleared-diff-to
# example: ./removeNumericDiff.py -i bincode-diff.asm -o bincode-diff-cleared.asm

# Helper functions


def is_diff_line(line: str) -> bool:
    return line.startswith('-') or line.startswith('+')


def split_into_words(s: str) -> str:
    return re.split('([a-zA-z0-9]*)', s)


def is_number(seq: str) -> bool:
    """Tests if [seq] is a number (up to hex form)."""
    try:
        int(seq, 16)
        return True
    except ValueError:
        return False


def filter_diffs_in_section(lines: List[str]) -> List[Tuple[int, int]]:
    """
    Takes lines of a diff section as input (without trailing @@...@@ label);
    finds all diff-s, i.e sequences of lines that start with '+' or '-';
    returns only such diff-s that contain not only diff by numbers.
    Returns a list of [start_index, end_index) ranges of filtered diff-s.
    """
    filtered_diffs = []
    i = 0
    while True:
        while i < len(lines) and (not is_diff_line(lines[i])):
            i += 1
        if i >= len(lines):
            break

        start_index = i
        minus_lines_inds = []
        plus_lines_inds = []
        while is_diff_line(lines[i]):
            if lines[i].startswith('-'):
                minus_lines_inds.append(i)
            else:
                plus_lines_inds.append(i)
            i += 1

        if len(minus_lines_inds) != len(plus_lines_inds):
            filtered_diffs.append((start_index, i))
            continue

        to_remove = True
        for j in range(len(minus_lines_inds)):
            mline = lines[minus_lines_inds[j]][1:]
            pline = lines[plus_lines_inds[j]][1:]
            words_pairs = list(
                zip(split_into_words(mline), split_into_words(pline))
            )
            for mline_word, pline_word in words_pairs:
                if mline_word == pline_word:
                    continue
                if is_number(mline_word) and is_number(pline_word):
                    continue
                to_remove = False
                break

        if not to_remove:
            filtered_diffs.append((start_index, i))

    return filtered_diffs


def remove_numeric_diff(sections: List[str]) -> List[str]:
    """
    Filters out all diff sections that differs only by numbers (up to the hex form)
    and clears the rest, leaving only non-numeric diff-s.
    """
    res_sections = []
    for section in sections:
        all_lines = section.splitlines(keepends=True)
        label = all_lines[0]
        lines = all_lines[1:]

        filtered_diffs = filter_diffs_in_section(lines)
        if len(filtered_diffs) == 0:
            continue

        label += '@@@' + str(filtered_diffs) + '@@@\n'
        cleared_section = label + '@@@@\n'.join(
            map(
                lambda diff: ''.join(lines[diff[0]:diff[1]]),
                filtered_diffs
            )
        )
        res_sections.append(cleared_section)

    return res_sections


def split_by_diff_sections(file) -> Tuple[str, List[str]]:
    """
    Splits a diff contained in the [file] by sections that start with diff labels @@...@@.
    Returns prefix as the first return value and the sections lits as the second.
    """
    labels_and_sections = re.split('(@@[^@]*@@)', file.read())
    prefix = labels_and_sections[0]
    sections = [labels_and_sections[i] + labels_and_sections[i + 1]
                for i in range(1, len(labels_and_sections), 2)]
    return prefix, sections


parser = argparse.ArgumentParser()
parser.add_argument("-i", "--input_file",
                    help="File that contains diff to clear.")
parser.add_argument("-o", "--output_file",
                    help="File to write cleared diff to.")
args = parser.parse_args()

with open(args.input_file, 'r') as file:
    prefix, input_sections = split_by_diff_sections(file)
    filtered_sections = remove_numeric_diff(input_sections)

with open(args.output_file, 'w') as file:
    file.write(prefix + '\n' + '\n'.join(filtered_sections))
