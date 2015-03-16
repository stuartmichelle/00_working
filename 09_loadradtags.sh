#!/bin/bash

#load stacks output into the mysql database

load_radtags.pl -D aclarkii -p ../04seq/stacks/ -b 1 -c -B -U -t population

# load_radtags.pl takes a set of data produced by either the denovo_map.pl 
# or ref_map.plprograms (or produced by hand) and loads it into the database. 
# This allows the data to be generated on one computer, but loaded from another. 
# Or, for a database to be regenerated without re-executing the pipeline.

# load_radtags.pl -D db -p path -b batch_id [-B -e desc] [-c] [-M pop_map] [-d] [-t] [-W path] [-U] [-d] [-h]
# D — Database to load data into.
#p — Path to input files.
#b — Batch ID.
#M — If you have analyzed several populations, specify a population map.
#c — Load the catalog into the database.
#B — Load information into batch table.
#e — batch dEscription.
# d — perform a dry run. Do not actually load any data, just print what would be executed.
#W — only load files found on this white list.
#U — do not load stacks to unique_tags table to save database space.
# t — pipeline type (either 'map' or 'population'), load_radtags.pl will guess based 
	# on the presence/absence of progeny file types.
# h — display this help message.
