#!/bin/bash

for file in *fasta.transdecoder.cds
do
    #truncate descriptor line so only name appears
    cut -d " " -f 1 $file > $file.temp
    mv $file.temp $file

    #output summary total FASTA file statistics along with a histogram using the script
    python3 /home/shared/biobootcamp/bin/get_fasta_stats.pl > originaloutput.txt

    #use transeq -sformat pearson to translate DNA to amino acids > $file.pep

done

for pep in *.pep
do
#generate a summary whose
#output is the total FASTA file statistics, as well as individual sequence statistics, for the
#*.pep and redirect the output to a file.

done
