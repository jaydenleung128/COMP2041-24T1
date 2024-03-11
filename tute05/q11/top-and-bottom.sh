#!/bin/dash

top_and_bottom() {
    if ! [ -f "$1" ];
    then
        echo "$0: error: $1 is not a valid file" >&2
        exit 1
    fi
    echo "==========================="
    echo "File: $1"
    echo "---------------------------"
    echo "First line:"
    head -n1 "$1"
    echo "Last line:"
    tail -n1 "$1"
    echo "==========================="
}

for file in "$@";
do
    top_and_bottom "$file"
done
