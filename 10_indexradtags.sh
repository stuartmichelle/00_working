#!/bin/bash

# index database for easier query, web view

index_radtags.pl -D aclarkii -c -t 

# This program indexes the database to speed execution of the web interface 
# after all of the data has been loaded. It moves a large amount of summary data 
# (such as the number of alleles, SNPs, mappable progeny, among other things) 
# into an index table to enable filtering and exporting of the data.

# index_radtags.pl -D db [-c] [-t] [-s path] [-d] [-h]
# D — radtag database to examine.
# s — path to SQL definition files for catalog/tag index tables.
# c — generate a catalog index. - view catalog on web interface
# t — generate a unique tags index. - genrates an index for each individual
# h — display this help message.
# d — turn on debug output.

# From Julien (https://groups.google.com/forum/#!searchin/stacks-users/index_radtags/stacks-users/8v0G4xoNEig/jxGBK6Gd3CUJ)
# 	The index_radtags.pl program knits together data from a number of tables into a 
# single table so that the web front end filters can work. Other programs are not 
# necessarily reliant on these indexes and will work fine. 
