#!/bin/bash

#SBATCH -A g2018003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 02:00:00
#SBATCH -J trans_assbly_eval_wiktor
#SBATCH --mail-type=ALL
#SBATCH --mail-user wiktorg.95@gmail.com

#modules
module load bioinfo-tools
module load quast

quast.py /home/wigu2376/Durian/analyses/assembly/transcriptome_assembly/assembly/Trinity-GG.fasta -R \
/home/wigu2376/Durian/analyses/assembly/assembly_evaluation/input/reference.fasta -o \
/home/wigu2376/Durian/analyses/assembly/transcriptome_assembly/quality_assessment/assembly
