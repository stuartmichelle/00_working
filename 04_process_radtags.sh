#!/bin/bash
# USAGE: run process radtags on samples by pool
    # 1. Find seq04 and replace with current seq number

process_radtags -b barcodes.txt -c -q -r \
--renz_1 pstI --renz_2 mluCI -i gzfastq \
--adapter_1 ACACTCTTTCCCTACACGACGCTCTTCCGATCT \
-f ./PoolA.fastq.gz -o ./PoolA

process_radtags -b barcodes.txt -c -q -r \
--renz_1 pstI --renz_2 mluCI -i gzfastq \
--adapter_1 ACACTCTTTCCCTACACGACGCTCTTCCGATCT \
-f ./PoolB.fastq.gz -o ./PoolB

process_radtags -b barcodes.txt -c -q -r \
--renz_1 pstI --renz_2 mluCI -i gzfastq \
--adapter_1 ACACTCTTTCCCTACACGACGCTCTTCCGATCT \
-f ./PoolC.fastq.gz -o ./PoolC

process_radtags -b barcodes.txt -c -q -r \
--renz_1 pstI --renz_2 mluCI -i gzfastq \
--adapter_1 ACACTCTTTCCCTACACGACGCTCTTCCGATCT \
-f ./PoolD.fastq.gz -o ./PoolD

mv nohup.out seq04_procradtags.out
mv seq04_procradtags.out ./logs/

rm ./*.fastq.gz


