#!/bin/bash

texto=$(</home/runner/TUIA-EDP-TPF/README.txt)

grep $texto  |wc -w
if [-w ge 4]

