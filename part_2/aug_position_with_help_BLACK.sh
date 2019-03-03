#!/bin/bash

#### Take 3 arguments and reverse the order in which they are entered on the command line ####
## Corinthia R. Black
## 03Mar2019

# if there are less than 3 arguments on the command line OR -h is entered following script
# help statement will print
if [[ "$#" -ne 3 || "$1" == "-h" ]]; then
    echo "Enter 3 arguments following script name"
    echo "Example: >./script.sh arg1 arg2 arg3"

# if entered correctly, the arguments will print reversed
else
    echo $3 $2 $1
fi
