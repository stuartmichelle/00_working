#!/bin/bash

#copy and paste from the google doc ligationID column to create this files list

files="
"

#Run ustacks on fastq files, 10 threads, depth of 2 to create a stack (default $

i=5001
for file in $files
do
    ustacks -t fastq -p 10 -m 2 -i $i -f ./samples/${file}.fq \
    -o ./stacks
    let $i+=1;
done