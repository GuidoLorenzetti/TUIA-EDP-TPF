#!/bin/bash
s="Here is a sample matching line
There are none here"
grep -i '\<[^[:digit:][:punct:][:space:]aeiou]*[aeiou][^[:digit:][:punct:][:space:]aeiou]*\>'