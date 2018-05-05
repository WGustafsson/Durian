#!/bin/bash -l

#SBATCH -A g2018003
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 10:00:00
#SBATCH -J durian_rna_assbly_wiktor
#SBATCH --mail-type=ALL
#SBATCH --mail-user wiktorg.95@gmail.com

# Load modules
module load bioinfo-tools trinity

# Execute
Trinity --genome_guided_bam /home/wigu2376/Durian/analyses/annotation/mapping/sorted_map.bam \
--max_memory 24G \
--genome_guided_max_intron 10000 \
--CPU 4 \
--output /home/wigu2376/Durian/analyses/assembly/transcriptome_assembly/assembly/trinity_out_dir
