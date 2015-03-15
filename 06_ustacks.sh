#!/bin/bash

#USAGE
#	1. Change the i number to match the seq number
#		(example: for seq04, i=40001, for seq05, i=50001)
#	2. Change the directory to match the seq - everywhere it says seq04 below, 
#		change to current working seq number.

#We are using lower than default depth of coverage because our
#average depth of coverage is ~10 or lower

#Run ustacks

i=40001
for file in ../04seq/samples/*.fq
do
	ustacks -t fastq -p 10 -d -r -m 2 -i $i -f ${file} \
    -o ../04seq/stacks
    let "i+=1";
done

mv nohup.out seq04_ustacks.out
mv seq04_ustacks.out ../04seq/logs/

#Todo:
#get script to prompt for which seqID we are working on and then populate the \
# id number, samples directory and stacks directory


# -m - minimum depth of coverage (default is 3), if sequencing depth of coverage is low, then this should be low too, if sequencing depth is high, this can also be high - How many stacks do I have?

# -M distance allowed between stacks - too low = a locus will not be formed from 2 SNPS, under representation of loci; too high = large non-sensical loci (default is 2)

# -N option allows you to determine how closely related sequences will tie back into the loci default = M+2


# Jones et al 2013 uses the options -m 3 (default), -r, -d, --model_type fixed (to mask within\
	#individual polymorphisms - can specify barcode error frequency), they also used denovo_map option -M 1 - one mismatch\
    #between stacks in an individual locus (default is 2).

# An article about optimizing parameters: "In summary, for the Berberis data set, the parameter values that seemed to both increase the number of loci and reduce the SNP and allele error rates were m = 3, M = 2,N = 4,n = 3,max_locus_stacks = 3 and a SNP calling model with an upper bound of 0.05.”

#For the current SEQ03 analysis, we used m=3, M=2, N=4, n=8, max_locus_stacks =3, and SNP calling model was unbounded (all of these are defaults except for n=8 in cstacks)

# The whole point of ustacks is to identify loci and call SNPS within loci in each individual
# ustacks will generate 3 files:
# sample*.tags -   
# sample*.alleles
# sample*.snps

# in Feb 2014 - ustacks -t fastq -f ./samples/sample_AACAAC.fq -o ./stacks -i 3 -m 3 -M 3 -p 15 -d -r 2>&1
# ustacks -t fastq -f ./samples/sample_AACAAC.fq -o stacks -i 101 -m 2 -d -r -M 8 -p 10 


# ustacks 1.20
# ustacks -t file_type -f file_path [-d] [-r] [-o path] [-i id] [-m min_cov] [-M max_dist] [-p num_threads] [-R] [-H] [-h]
#   t: input file Type. Supported types: fasta, fastq, gzfasta, or gzfastq.
#   f: input file path.
#   o: output path to write results.
#   i: SQL ID to insert into the output to identify this sample.
#   m: Minimum depth of coverage required to create a stack (default 3).
#   M: Maximum distance (in nucleotides) allowed between stacks (default 2).
#   N: Maximum distance allowed to align secondary reads to primary stacks (default: M + 2).
#   R: retain unused reads.
#   H: disable calling haplotypes from secondary reads.
#   p: enable parallel execution with num_threads threads.
#   h: display this help messsage.

#   Stack assembly options:
#     r: enable the Removal algorithm, to drop highly-repetitive stacks (and nearby errors) from the algorithm.
#     d: enable the Deleveraging algorithm, used for resolving over merged tags.
#     --max_locus_stacks <num>: maximum number of stacks at a single de novo locus (default 3).
#   Model options:
#     --model_type: either 'snp' (default), 'bounded', or 'fixed'
#     For the SNP or Bounded SNP model:
#       --alpha <num>: chi square significance level required to call a heterozygote or homozygote, either 0.1, 0.05 (default), 0.01, or 0.001.
#     For the Bounded SNP model:
#       --bound_low <num>: lower bound for epsilon, the error rate, between 0 and 1.0 (default 0).
#       --bound_high <num>: upper bound for epsilon, the error rate, between 0 and 1.0 (default 1).
#     For the Fixed model:
#       --bc_err_freq <num>: specify the barcode error frequency, between 0 and 1.0.


# ustacks / pstacks (http://creskolab.uoregon.edu/stacks/manual/#cfiles)

# XXX.tags.tsv file
# Column	Name	Description
# 1	Sql ID	This field will always be "0", however the MySQL database will assign an ID when it is loaded.
# 2	Sample ID	Each sample passed through Stacks gets a unique id for that sample.
# 3	Locus ID	Each locus formed from one or more stacks gets an ID.
# 4	Chromosome	If aligned to a reference genome using pstacks, otherwise it’s blank.
# 5	Basepair	If aligned to ref genome using pstacks.
# 6	Strand	If aligned to ref genome using pstacks.
# 7	Sequence Type	Either 'consensus', 'primary' or 'secondary', see the Stacks paper for definitions of these terms.
# 8	Stack component	An integer representing which stack component this read belongs to.
# 9	Sequence ID	The individual sequence read that was merged into this stack.
# 10	Sequence	The raw sequencing read.
# 11	Deleveraged Flag	If "1", this stack was processed by the deleveraging algorithm and was broken down from a larger stack.
# 12	Blacklisted Flag	If "1", this stack was still confounded depsite processing by the deleveraging algorithm.
# 13	Lumberjackstack Flag	If "1", this stack was set aside due to having an extreme depth of coverage.
# Notes: For the tags file, each stack will start in the file with a consensus 
# sequence for the entire stack followed by the flags for that stack. 
# Then, each individual read that was merged into that stack will follow. 
# The next stack will start with another consensus sequence.


# XXX.snps.tsv file
# Column	Name	Description
# 1	Sql ID	This field will always be "0", however the MySQL database will assign an ID when it is loaded.
# 2	Sample ID	
# 3	Locus ID	
# 4	SNP Column	Position of the SNP within the locus, reported using a zero-based offset (first nucleotide is enumerated as 0)
# 5	Likelihood ratio	From the SNP-calling model.
# 6	Rank_1	Majority nucleotide.
# 7	Rank_2	Alternative nucleotide.
# Notes: If a locus/stack has two SNPs called within it, then there will be two lines in this file listing each one.


#XXX.alleles.tsv file
# Column	Name	Description
# 1	SQL ID	This field will always be "0", however the MySQL database will assign an ID when it is loaded.
# 2	Sample ID	
# 3	Locus ID	
# 4	Haplotype	The haplotype, as constructed from the called SNPs at each locus.
# 5	Percent	Percentage of reads that have this haplotype
# 6	Count	Raw number of reads that have this haplotype
