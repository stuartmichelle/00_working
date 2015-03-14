#!/bin/bash

# USAGE: create all of the directories and info files necessary to run stacks
# 	1. Find and replace 04seq to seq number of current project
	# 2. Import index - make sure index is listed as Pools A, B, C, D and names files.

mkdir ~/01_stacks/04seq
mkdir ~/01_stacks/04seq/lane1 PoolA PoolB PoolC PoolD samples stacks logs
cp ~/01_stacks/barcodes.txt ~/01_stacks/04seq/
cp ~/01_stacks/batch_1* ~/01_stacks/04seq/stacks/