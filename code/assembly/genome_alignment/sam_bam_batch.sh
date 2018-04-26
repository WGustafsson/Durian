#!/bin/bash -l

#SBATCH -A g2018003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 01:00:00
#SBATCH -J ill_pac_sambam_wiktor
#SBATCH --mail-type=ALL
#SBATCH --mail-user wiktorg.95@gmail.com

# modules
module load bioinfo-tools
module load samtools/1.6

# execute
samtools view -b -o /home/wigu2376/Durian/analyses/assembly/genome_alignment/align.bam /home/wigu2376/Durian/analyses/assembly/genome_alignment/align.sam
