#!/bin/bash

# USAGE: Change process_radtag output from sample_barcode to actual sample name.
#Then move all of the Pools into one samples directory.

sh rename.for.dDocent_se names_PoolA.tsv

cd ../PoolB

sh rename.for.dDocent_se names_PoolB.tsv

cd ../PoolC

sh rename.for.dDocent_se names_PoolC.tsv

cd ../PoolD

sh rename.for.dDocent_se names_PoolD.tsv 

cd ..

mv ./PoolA/APCL* ./samples/
mv ./PoolB/APCL* ./samples/
mv ./PoolC/APCL* ./samples/
mv ./PoolD/APCL* ./samples/

