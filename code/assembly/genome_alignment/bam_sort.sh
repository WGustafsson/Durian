#!/bin/bash -l

#SBATCH -A g2018003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 01:00:00
#SBATCH -J sort_bam_wiktor
#SBATCH --mail-type=ALL
#SBATCH --mail-user wiktorg.95@gmail.com

# modules
module load bioinfo-tools
module load samtools/1.6

# execute
samtools sort -@ 2 -o /home/wigu2376/Durian/analyses/assembly/genome_alignment/align_sorted.bam /home/wigu2376/Durian/analyses/assembly/genome_alignment/align.bam
