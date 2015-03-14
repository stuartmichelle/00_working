#!/bin/bash

#USAGE
#	1. Change the i number to match the seq number
#		(example: for seq04, i=40001, for seq05, i=50001)
#	2. Change the directory to match the seq - everywhere it says seq04 below, 
#		change to current working seq number.

#Run ustacks

i=40001
for file in ../04seq/samples/*.fq
do
	ustacks -t fastq -p 10 -m 2 -i $i -f ${file} \
    -o ../04seq/stacks
    let "i+=1";
done


#Todo:
#get script to prompt for which seqID we are working on and then populate the \
# id number, samples directory and stacks directory

#add ustacks options to this file, and things I've learned about ustacks along the way
