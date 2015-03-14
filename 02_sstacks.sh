#!/bin/bash

#copy and paste from the google doc ligationID column to create this files list

files="
"

#Run sstacks

for file in $files
do
    sstacks -p 10 -b 1 -c ./stacks/batch_1 \
            -s ./stacks/$file \
            -o ./stacks/
done
