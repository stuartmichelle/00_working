#!/bin/bash

#Todo:
#get script to prompt for which seqID we are working on and then populate the \
# id number, samples directory and stacks directory

#Run ustacks on fastq files, 10 threads, depth of 2 to create a stack (default $

i=40001
for file in ../04seq/samples/*.fq
do
	ustacks -t fastq -p 10 -m 2 -i $i -f ${file} \
    -o ../04seq/stacks
    let "i+=1";
done


