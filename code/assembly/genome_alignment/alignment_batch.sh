#!/bin/bash -l

#SBATCH -A g2018003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 10:00:00
#SBATCH -J illumina_pacbio_align_wiktor
#SBATCH --mail-type=ALL
#SBATCH --mail-user wiktorg.95@gmail.com

# modules
module load bioinfo-tools
module load bwa/0.7.17

# execute
bwa index /home/wigu2376/Durian/analyses/assembly/genome_assembly/durian_pacbio.contigs.fasta

bwa mem -t 2 /home/wigu2376/Durian/analyses/assembly/genome_assembly/durian_pacbio.contigs.fasta \
/home/wigu2376/illumina_data/SRR6058604_scaffold_10.1P.fastq \
/home/wigu2376/illumina_data/SRR6058604_scaffold_10.2P.fastq \
> /home/wigu2376/Durian/analyses/assembly/genome_alignment/align.sam

