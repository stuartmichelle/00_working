#!/bin/bash

# USAGE
# 	1. Move the files created from lane 1 bar code splitter into a separate 
# 	directory so they aren't overwritten when lane 2 runs.

	mv *-1.fastq.gz ./lane1
	mv *-2.fastq.gz ./lane1

	