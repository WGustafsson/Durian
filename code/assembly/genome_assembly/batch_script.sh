#!/bin/bash -l

#SBATCH -A g2018003
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 24:00:00
#SBATCH -J durian_genome_assembly_wiktor
#SBATCH --mail-type=ALL
#SBATCH --mail-user wiktorg.95@gmail.com

# Load modules
module load bioinfo-tools
module load canu/1.7

# Commands
canu \
-p durian_pacbio \
-d /home/wigu2376/Durian/analyses/assembly/genome_assembly \
genomeSize=25m \
-pacbio-raw /home/wigu2376/Durian/data/trimmed_data/WGS_trimmed_data/SRR6037732_scaffold_10.fq.gz
