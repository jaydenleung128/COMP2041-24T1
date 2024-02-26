#!/bin/bash

for file in *.c; do
    echo "$file includes:"
    sed -En "s/^#include .(.*).$/    \1/p" count_words.c
done