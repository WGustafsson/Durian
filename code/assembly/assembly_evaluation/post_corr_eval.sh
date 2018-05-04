#!/bin/bash

#SBATCH -A g2018003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 02:00:00
#SBATCH -J corr_assembly_eval_wiktor
#SBATCH --mail-type=ALL
#SBATCH --mail-user wiktorg.95@gmail.com

#modules
module load bioinfo-tools
module load quast

quast.py /home/wigu2376/Durian/analyses/assembly/genome_correction/pilon_correction/corrected_assembly.fasta -R \
/home/wigu2376/Durian/analyses/assembly/assembly_evaluation/input/reference.fasta -o \
/home/wigu2376/Durian/analyses/assembly/assembly_evaluation/output/post_correction
