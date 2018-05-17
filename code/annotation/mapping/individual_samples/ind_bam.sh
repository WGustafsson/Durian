#!/bin/bash -l

#SBATCH -A g2018003
#SBATCH -p core
#SBATCH -n 4  
#SBATCH -t 12:00:00    
#SBATCH -J reads_counting_ind
#SBATCH --mail-type=ALL
#SBATCH --mail-user wiktorg.95@gmail.com

module load bioinfo-tools samtools htseq

sample_path=/home/wigu2376/Durian/analyses/annotation/mapping/individual_samples  
out=/home/wigu2376/Durian/analyses/diff_exp/reads_counting/individual_samples 

for sample in $sample_path/*
do  
        sample=$(basename $sample)
        echo $sample

        samtools sort -n -O BAM -@ 4 -o $sample_path/$sample/${sample}_sorted-name.bam $sample_path/$sample/accepted_hits.bam

	mkdir $out/$sample

        htseq-count -f bam -r name -s no -i ID \
        $sample_path/$sample/${sample}_sorted-name.bam \
        /home/wigu2376/Durian/analyses/annotation/structural/NW_019167827%2E1.gff \
        > $out/$sample/${sample}_counts.txt
done
