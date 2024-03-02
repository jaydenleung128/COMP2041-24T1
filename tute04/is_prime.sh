#!/bin/dash

# Checks number of args are correct
num=$1
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <num>"
    exit 1
fi

# Prime numbers are greater than 1
if [ "$num" -le 1 ]; then
    echo "$num is not prime"
    exit 1
fi

i=2
while [ $((i * i)) -le "$num" ]; do
    if [ $((num % i)) -eq 0 ]; then
        echo "$num is not prime"
        exit 1
    fi

    i=$((i + 1))
done

echo "$num is prime"
exit 0