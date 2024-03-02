#!/bin/dash

# NOTE: Running this script requires is_prime.sh to be in the folder as this
# Checks number of args are correct

stop=$1
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <num>"
    exit 1
fi

for num in $(seq 2 "$stop"); do
    if ./is_prime.sh "$num" >/dev/null ; then
        echo "$num"
    fi
done