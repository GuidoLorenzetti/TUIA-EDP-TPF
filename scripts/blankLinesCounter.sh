#!/bin/bash

texto=$(<$1)

awk ' length($0) < 1 ' /home/runner/TUIA-EDP-TPF/README.txt > lineas_vacias

wc -l lineas_vacias
