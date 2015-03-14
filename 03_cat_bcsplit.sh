#!/bin/bash

# USAGE: Combine the results of the two bcsplit runs into one set of reads per pool

cat ./lane1/PoolA-read-1.fastq.gz ./PoolA-read-1.fastq.gz > PoolA.fastq.gz

cat ./lane1/PoolB-read-1.fastq.gz ./PoolB-read-1.fastq.gz > PoolB.fastq.gz

cat ./lane1/PoolC-read-1.fastq.gz ./PoolC-read-1.fastq.gz > PoolC.fastq.gz

cat ./lane1/PoolD-read-1.fastq.gz ./PoolD-read-1.fastq.gz > PoolD.fastq.gz

