#!/bin/bash
#$ -M bcoggins@nd.edu
#$ -m abe
#$ -N TrinityAssembly_output
#$ -pe smp 1

#move to trimmed directory
#combine paired and unpaired reads
 gzip -d *.fq.gz
 
 cat *_pForward.fq *_uForward.fq > combined_F.fq
 cat *_pReverse.fq *_uReverse.fq > combined_R.fq

module load bio
module load bio/trinity/2.8.4


Trinity --seqType fq --max_memory 50G --left combined_F.fq --right combined_R.fq --CPU 6


