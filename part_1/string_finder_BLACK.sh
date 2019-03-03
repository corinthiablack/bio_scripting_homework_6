#!/bin/bash

#### Find string and return 1)number of times string appeared in line 2)what line it appears in 3)filename ####
## Corinthia R. Black
## 03Mar2019

# output file:
# #of_times_string_appears what_line filename
echo "times_creeping_appears   line    filename" > output.txt

# loop though all files that start with "pg"
for bookpage in pg*.txt
do
    # find the word "creeping" and return line number and filename
    # remove "creeping" from output and print only line number and filename
    # fine number of times line and filename show up to = number of times "creeping" appeared
    # replace : and " " with tab
    # append output to .txt file
    grep -o -n --with-filename 'creeping' $bookpage | cut -d ":" -f 1,2 | uniq -c | tr : "  " | tr " " "  " >> output.txt
done
