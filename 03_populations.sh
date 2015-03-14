#!/bin/bash

#copy and paste from the google doc ligationID column to create this files list

files="
"


#Throughout this script there is a $src, which I think means the folder the scr$
#that's how we are going to treat it for now. Run from the #seq directory. Mayb$


#Run ustacks on fastq files, 10 threads, depth of 2 to create a stack (default $

#i=5001
#for file in $files
#do
#    ustacks -t fastq -p 10 -m 2 -i $i -f $src./samples/${file}.fq -o $src./sta$
#    let "i+=1";
#done

#
#Run rxstacks, batch 1, 10 threads - the catalog files have to be in the ./stac$
#copy them there now if needed.


#for file in $files
#do
#    rxstacks -b 1 -t 10 --prune_haplo --lnl_lim -8.0 --lnl_dist -P ./stacks -o$
#done
#

#Use a loop to create a list of files to supply to cstacks

#samp=""
#for file in $files
#samp=""
#for file in $files
#do samp+="-s ./stacks/$file ";
#done

#Build the catalog; the "&>>" will capture all output and append it to the log $

#cstacks -b 1 -o ./stacks --catalog ./catcopy/batch_1.catalog -n 3 -p 8 $samp

#Run sstacks

for file in $files
do
    sstacks -p 10 -b 1 -c ./stacks/batch_1 \
            -s ./stacks/$file \
            -o ./stacks/
done

#

#
# Calculate population statistics and export several output files.
#
#populations -t 36 -b 1 -P $src/stacks/ -M $src/popmap \
#            -p 9 -f p_value -k -r 0.75 -s --structure --phylip --genepop
#



