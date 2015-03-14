#!/bin/bash

# USAGE:
# 	1. Update bcfile name 
# 	2. Update file names to reflect current seq runs

	barcode_splitter.py --bcfile 04seq_index --idxread 2 --suffix .fastq.gz \
	/local/shared/pinsky_lab/sequencing/hiseq_2014_12_19_SEQ04/clownfish-ddradseq-seq04-for-222-cycles-hau8radxx_1_read_1_passed_filter.fastq.gz \
	/local/shared/pinsky_lab/sequencing/hiseq_2014_12_19_SEQ04/clownfish-ddradseq-seq04-for-222-cycles-hau8radxx_1_read_2_index_read_passed_filter.fastq.gz

	# 	1. Move the files created from lane 1 bar code splitter into a separate 
# 	directory so they aren't overwritten when lane 2 runs.

	mv *-1.fastq.gz ./lane1
	mv *-2.fastq.gz ./lane1


# LANE 2
# 	1. Update file names to reflect current seq runs

	barcode_splitter.py --bcfile 04seq_index --idxread 2 --suffix .fastq.gz \
	/local/shared/pinsky_lab/sequencing/hiseq_2014_12_19_SEQ04/clownfish-ddradseq-seq04-for-222-cycles-hau8radxx_2_read_1_passed_filter.fastq.gz \
	/local/shared/pinsky_lab/sequencing/hiseq_2014_12_19_SEQ04/clownfish-ddradseq-seq04-for-222-cycles-hau8radxx_2_read_2_index_read_passed_filter.fastq.gz
