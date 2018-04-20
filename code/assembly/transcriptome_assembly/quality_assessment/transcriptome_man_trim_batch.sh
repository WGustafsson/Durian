#!/bin/bash -l

#SBATCH -A g2018003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 01:00:00
#SBATCH -J durian_transcriptome_qc
#SBATCH --mail-type=ALL
#SBATCH --mail-user wiktorg.95@gmail.com

# Load modules
module load bioinfo-tools
module load FastQC

# Commands
fastqc /home/wigu2376/Durian/analyses/assembly/transcriptome_assembly/preprocessing/* -o /home/wigu2376/Durian/analyses/assembly/transcriptome_assembly/quality_assessment/manually_trimmed
