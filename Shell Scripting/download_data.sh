#!/bin/bash

# Define the new URL
url="https://www.amfiindia.com/spages/NAVAll.txt"

# Define the output file name
output_file="output.txt"

# Use curl to fetch data from the new URL and save it to the output file
curl -o "$output_file" "$url"
