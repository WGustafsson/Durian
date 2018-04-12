#!/bin/bash



#load modules
module load bioinfo-tools
module load FastQC

#execute
fastqc /home/wigu2376/Durian/data/trimmed_data/RNA_trimmed_data/*fastq
