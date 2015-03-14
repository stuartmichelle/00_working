#!/bin/bash

#copy and paste from the google doc ligationID column to create this files list

files="
"

#Run rxstacks, batch 1, 10 threads - the catalog files have to \
#be in the ./stacks directory, copy them there now if needed.


for file in $files
do
    rxstacks -b 1 -t 10 --prune_haplo --lnl_lim -8.0 --lnl_dist -P ./stacks \
    -o ./stacks
done
