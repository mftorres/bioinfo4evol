#!/usr/bin/bash

# example script to count the number of sequences in a fasta file
# execute as:
# ./count_sequences.sh spiders.fasta counts.txt
# $1 is spiders.fasta
# $2 is the output file


echo "Input file: $1"
echo "Output file: $2"

echo "Working directory: $PWD"

while IFS='' read -u 9 -r line; do
    GENUS=$(echo "$line" | cut -f1);
    echo $GENUS >> "${2}";
    grep "$GENUS" $1 | wc -l >> "${2}";
done 9< $1

echo `$date`
