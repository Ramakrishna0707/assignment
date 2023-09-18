#!/bin/bash

# Input file containing the downloaded data
input_file="output.txt"

# Output TSV file name
output_file="nav_data.tsv"

# Extract Scheme Name and Asset Value fields and save them in the TSV file
awk -F ';' 'NR > 1 {print $4 "\t" $5}' "$input_file" > "$output_file"
