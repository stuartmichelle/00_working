#!/bin/bash

# USAGE: Change process_radtag output from sample_barcode to actual sample name.

sh rename.for.dDocent_se names_PoolA.tsv

cd ../PoolB

sh rename.for.dDocent_se names_PoolB.tsv

cd ../PoolC

sh rename.for.dDocent_se names_PoolC.tsv

cd ../PoolD

sh rename.for.dDocent_se names_PoolD.tsv 

