#!/bin/bash
# USAGE: run process radtags on samples by pool
    # 1. Change Pool A to Pool B and so on for each run.

process_radtags -b barcodes.txt -c -q -r \
--renz_1 pstI --renz_2 mluCI -i gzfastq \
--adapter_1 ACACTCTTTCCCTACACGACGCTCTTCCGATCT \
-f ./bcsplit/PoolA.fastq.gz -o ./PoolA



