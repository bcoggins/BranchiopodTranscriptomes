#!/bin/bash
#$ -M bcoggins@nd.edu
#$ -m abe
#$ -N TrinityAssembly_output
#$ -pe smp 1

#move to trimmed directory


module load bio
module load bio/trinity/2.8.4
module load bio/salmon/0.11.2
module load bio/jellyfish/2.2.10
module load bio/python/2.7.14


Trinity --seqType fq --max_memory 50G --left *_pForward.fq --right *_pReverse.fq --CPU 6
