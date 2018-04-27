#!/bin/bash -l

#SBATCH -A g2018003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 02:00:00
#SBATCH -J genome_correct_wiktor
#SBATCH --mail-type=ALL
#SBATCH --mail-user wiktorg.95@gmail.com

# modules
module load bioinfo-tools
module load Pilon

# execute
java -Xmx30G -jar /sw/apps/bioinfo/Pilon/1.22/rackham/pilon.jar \
--genome /home/wigu2376/Durian/analyses/assembly/genome_assembly/durian_pacbio.contigs.fasta \
--bam /home/wigu2376/Durian/analyses/assembly/genome_alignment/align_sorted.bam \
--outdir /home/wigu2376/Durian/analyses/assembly/genome_correction/pilon_correction \
--diploid
