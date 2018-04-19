#!/bin/bash

module load bioinfo-tools FastQC

fastqc /home/wigu2376/Durian/data/trimmed_data/RNA_raw_data/*fastq.gz -o /home/wigu2376/Durian/analyses/assembly/transcriptome_assembly/quality_assessment/untrimmed
fastqc /home/wigu2376/Durian/data/trimmed_data/RNA_trimmed_data/*fastq.gz -o /home/wigu2376/Durian/analyses/assembly/transcriptome_assembly/quality_assessment/trimmed

