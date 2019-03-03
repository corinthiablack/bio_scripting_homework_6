#!/bin/bash

grep -o -n --with-filename 'creeping' $bookpage | cut -d ":" -f 1,2 | uniq -c | tr : "  " | tr " " "  " >> output.txt

