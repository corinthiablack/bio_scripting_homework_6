#!/bin/bash

#### Generate nucleic acid sequences from DNA sequences in FASTA format ####
#### Output status files for DNA and nucleic acid sequences ####
## Corinthia R. Black
## 03Mar2019


for file in *fasta.transdecoder.cds
do
    #truncate descriptor line so only name appears and file name stays the same
    cut -d " " -f 1 $file > $file.temp
    mv $file.temp $file

    #get total FASTA file stats and histogram and save as .txt file
    get_fasta_stats.pl -g -T  $file >> fasta_output.txt

    #use transeq -sformat pearson to translate DNA to amino acids and save as file with same name + .pep
    #input: fasta | output: .pep
    transeq -sformat pearson  $file $file.pep

done

for pepfile in *.pep
do
    #get total FASTA file statistics and individual sequence stats and save output as .txt file
    #input: *.pep | output: pep_output.txt
    get_fasta_stats.pl -t $pepfile >> pep_output.txt

done
