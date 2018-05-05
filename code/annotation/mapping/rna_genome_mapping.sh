#!/bin/bash -l

#SBATCH -A g2018003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 10:00:00
#SBATCH -J rna_mapping_wiktor
#SBATCH --mail-type=ALL
#SBATCH --mail-user wiktorg.95@gmail.com

module load bioinfo-tools
module load tophat

tophat -o /home/wigu2376/Durian/analyses/annotation/mapping \
/home/wigu2376/Durian/data/genome/reference \
/home/wigu2376/Durian/analyses/assembly/transcriptome_assembly/preprocessing/SRR6040092_scaffold_10.1.fastq.gz,\
/home/wigu2376/Durian/analyses/assembly/transcriptome_assembly/preprocessing/SRR6040093_scaffold_10.1.fastq.gz,\
/home/wigu2376/Durian/analyses/assembly/transcriptome_assembly/preprocessing/SRR6040094_scaffold_10.1.fastq.gz,\
/home/wigu2376/Durian/analyses/assembly/transcriptome_assembly/preprocessing/SRR6040095_scaffold_10_1P.fastq.gz,\
/home/wigu2376/Durian/analyses/assembly/transcriptome_assembly/preprocessing/SRR6040096_scaffold_10.1.fastq.gz,\
/home/wigu2376/Durian/analyses/assembly/transcriptome_assembly/preprocessing/SRR6040097_scaffold_10.1.fastq.gz,\
/home/wigu2376/Durian/analyses/assembly/transcriptome_assembly/preprocessing/SRR6156066_scaffold_10.1.fastq.gz,\
/home/wigu2376/Durian/analyses/assembly/transcriptome_assembly/preprocessing/SRR6156067_scaffold_10.1.fastq.gz,\
/home/wigu2376/Durian/analyses/assembly/transcriptome_assembly/preprocessing/SRR6156069_scaffold_10.1.fastq.gz \
/home/wigu2376/Durian/analyses/assembly/transcriptome_assembly/preprocessing/SRR6040092_scaffold_10.2.fastq.gz,\
/home/wigu2376/Durian/analyses/assembly/transcriptome_assembly/preprocessing/SRR6040093_scaffold_10.2.fastq.gz,\
/home/wigu2376/Durian/analyses/assembly/transcriptome_assembly/preprocessing/SRR6040094_scaffold_10.2.fastq.gz,\
/home/wigu2376/Durian/analyses/assembly/transcriptome_assembly/preprocessing/SRR6040095_scaffold_10_2P.fastq.gz,\
/home/wigu2376/Durian/analyses/assembly/transcriptome_assembly/preprocessing/SRR6040096_scaffold_10.2.fastq.gz,\
/home/wigu2376/Durian/analyses/assembly/transcriptome_assembly/preprocessing/SRR6040097_scaffold_10.2.fastq.gz,\
/home/wigu2376/Durian/analyses/assembly/transcriptome_assembly/preprocessing/SRR6156066_scaffold_10.2.fastq.gz,\
/home/wigu2376/Durian/analyses/assembly/transcriptome_assembly/preprocessing/SRR6156067_scaffold_10.2.fastq.gz,\
/home/wigu2376/Durian/analyses/assembly/transcriptome_assembly/preprocessing/SRR6156069_scaffold_10.2.fastq.gz
