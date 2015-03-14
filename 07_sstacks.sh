#!/bin/bash

#Todo:
#get script to prompt for which seqID we are working on and then populate the \
# id number, samples directory and stacks directory

#copy and paste from the google doc ligationID column to create this files list

#Run sstacks

for file in $(ls -1 ../04seq/stacks/*.tags.tsv.gz \
| grep -v catalog | perl -pe 's/\.tags\.tsv\.gz//')
do
    sstacks -p 10 -b 1 -c ../04seq/stacks/batch_1 \
            -s ../04seq/stacks/$file \
            -o ./stacks/
done
