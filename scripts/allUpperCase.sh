#!/bin/bash

#grep -H -oP '\b[A-Z0-9_]*[A-Z]+[A-Z0-9_]*\b' *
sol

#cat testfile2 | tr -d [:upper:]

grep -o \<[[:upper:]][[:upper:]]*\> textfile.txt