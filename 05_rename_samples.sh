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

mv ./PoolA/names ./logs/
mv ./PoolB/names ./logs/
mv ./PoolC/names ./logs/
mv ./PoolD/names ./logs/

mv ./PoolA/process_radtags.log ./PoolA/Aprocess_radtags.log
mv ./PoolB/process_radtags.log ./PoolB/Bprocess_radtags.log
mv ./PoolC/process_radtags.log ./PoolC/Cprocess_radtags.log
mv ./PoolD/process_radtags.log ./PoolD/Dprocess_radtags.log

mv ./PoolA/Aprocess_radtags.log ./logs/
mv ./PoolB/Bprocess_radtags.log ./logs/
mv ./PoolC/Cprocess_radtags.log ./logs/
mv ./PoolD/Dprocess_radtags.log ./logs/

rmdir PoolA
rmdir PoolB
rmdir PoolC
rmdir PoolD

