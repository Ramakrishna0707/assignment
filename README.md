
# AFFINITY ASSIGNMENTS

A brief description of what this task is 

## Task-1 (Python)

**Question** : 

BestDelivery Courier Company has an issue. Many parcels they get to deliver have the wrong 
PIN code and that leads to packages going to the wrong location and then someone figuring out 
manually that the PIN code is wrong from the other parts of the address. You are the 
programmer who has to fix this issue by writing a program that takes as input a free flowing 
address and checking if the PIN code indeed corresponds to the address mentioned. Use this 
free API postalpincode.in/Api-Details for the purpose of PIN code identification.
e.g. of correct addresses: "2nd Phase, 374/B, 80 Feet Rd, Mysore Bank Colony, Banashankari 
3rd Stage, Srinivasa Nagar, Bengaluru, Karnataka 560050”,
"2nd Phase, 374/B, 80 Feet Rd, Bank Colony, Banashankari 3rd Stage, Srinivasa Nagar, 
Bengaluru, Karnataka 560050”, "374/B, 80 Feet Rd, State Bank Colony, Banashankari 3rd 
Stage, Srinivasa Nagar, Bangalore. 560050”,
e.g. of an incorrect addresses: "2nd Phase, 374/B, 80 Feet Rd, Mysore Bank Colony, 
Banashankari 3rd Stage, Srinivasa Nagar, Bengaluru, Karnataka 560095”,
“Colony, Bengaluru, Karnataka 560050”

## Description

For the execution of the code I have used the jupyter Notebook.

Installed the request python module. The requests module allows you to send HTTP requests using Python.
```bash
pip install requests

import requests
```
- Find the respective files in the Python folder

# TASK2 - SQL
The following questions test your aptitude for interacting with databases. The questions are 
based off the following public SQL DB: docs.rfam.org/en/latest/database.html
 

## Installation

Install MySQL workbench. After installation open the cmd and use this  command to get the access to the database - Rfam.


```bash
mysql --user rfamro --host mysql-rfam-public.ebi.ac.uk --port 4497 --database Rfam
```
Commands to work with the database

```bash

show databases;

use Rfam;
```
- Find the respective files in the SQL folder

# Task3 - (Shell Scripting)

**Question** :
This question is to test your aptitude for writing small shell scripts on Unix. You are given this 
URL amfiindia.com/spages/NAVAll.txt. Write a shell script that extracts the Scheme Name and 
Asset Value fields only and saves them in a tsv file. And ever wondered if this data should not 
be stored in JSON

## Installation

Install the ubuntu on the windows or in any virtual platforms like virtualbox or vmware


## Running Task

To run task, run the following command

```bash
  sudo apt install gawk
```
created a bash file to extract the data from the url and save it in .txt file
```bash
nano download_data.sh
```
Write this script in the download_data.sh
```bash
#!/bin/bash

url="https://www.amfiindia.com/spages/NAVAll.txt"

output_file="output.txt"

curl -o "$output_file" "$url"
```
press CTRL+O , ENTER , CTRL + X to exit from the editor  

Change the permission of download_data.sh to execute the program 

```bash
chmod +x download_data.sh 
```
Excuting the command 
```bash
./download_data.sh 
```
Now the data is the extract from the url and saved it in the output.txt file. To check the data use the below command
```bash
cat output.txt
```

To extrac the Schema Name and Asset Value from the output file and storing it in the TSV file. Use this command in the terminal.
```bash
nano extract_data_from_output.sh
```
Write this script in the extract_data_from_output.sh file
```bash
#!/bin/bash

input_file="output.txt"

output_file="nav_data.tsv"

awk -F ';' 'NR > 1 {print $4 "\t" $5}' "$input_file" > "$output_file"
```
Press CTRL+O , then Enter and CTRL + X to get back from the editor 

Change the permissions of the file to execute 
```bash
chmod +x extract_data_from_output.sh
```
Excute the script by using this command
```bash
./extract_data_from_output.sh
```
To check the output use this command
```bash
cat nav_data.tsv
````


- Find the respective files in the shell script folder
