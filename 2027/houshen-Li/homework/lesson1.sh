#! /usr/bin/env bash

# 设置output.txt和my_notes.md文件路径
OUTPUT_TXT="$(dirname $"0")/output.txt"
MY_NOTES_MD="$(dirname $"0")/../notes/my_notes.md"

{
	echo "系统时间:"
	date '+%Y-%m-%d %H:%M:%S %Z'
	echo
	
	echo "最近使用的10条命令"
	tail -10 "${HISTFILE:-$HOME/.bash_history}"
	echo

	echo "笔记的字数"
	wc -m < "$MY_NOTES_MD"
	echo
} > "$OUTPUT_TXT"
