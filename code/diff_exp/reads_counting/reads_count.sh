#!/bin/bash -l

#SBATCH -A g2018003
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 5:00:00
#SBATCH -J reads_count
#SBATCH --mail-type=ALL
#SBATCH --mail-user wiktorg.95@gmail.com

module load bioinfo-tools samtools htseq

samtools sort -n -O BAM  -@ 4 -o /home/wigu2376/Durian/analyses/annotation/mapping/sorted_name.bam \
/home/wigu2376/Durian/analyses/annotation/mapping/sorted_map.bam

htseq-count -f bam -r name -i ID -s no -t gene \
/home/wigu2376/Durian/analyses/annotation/mapping/sorted_name.bam \
/home/wigu2376/Durian/analyses/annotation/structural/NW_019167827%2E1.gff \
> /home/wigu2376/Durian/analyses/diff_exp/reads_counting/counts.file
