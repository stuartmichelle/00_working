#!/bin/bash

# USAGE:
# 	1. Update bcfile name 
# 	2. Update file names to reflect current seq runs

	barcode_splitter.py --bcfile 04seq_index --idxread 2 --suffix .fastq.gz \
	/local/shared/pinsky_lab/sequencing/hiseq_2014_12_19_SEQ04/clownfish-ddradseq-seq04-for-222-cycles-hau8radxx_1_read_1_passed_filter.fastq.gz \
	/local/shared/pinsky_lab/sequencing/hiseq_2014_12_19_SEQ04/clownfish-ddradseq-seq04-for-222-cycles-hau8radxx_1_read_2_index_read_passed_filter.fastq.gz

	