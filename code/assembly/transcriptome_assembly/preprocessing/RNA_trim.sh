#!/bin/bash -l

#SBATCH -A g2018003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 02:00:00
#SBATCH -J durian_rna_trim_wiktor
#SBATCH --mail-type=ALL
#SBATCH --mail-user wiktorg.95@gmail.com

# Load modules
module load bioinfo-tools trimmomatic/0.36

# Execute
java -jar $TRIMMOMATIC_HOME/trimmomatic.jar PE \
/proj/g2018003/nobackup/private/Tean_Teh_2017/scaffold10/RNA_raw_data/SRR6040095_scaffold_10.1.fastq.gz \
/proj/g2018003/nobackup/private/Tean_Teh_2017/scaffold10/RNA_raw_data/SRR6040095_scaffold_10.2.fastq.gz \
-baseout /home/wigu2376/Durian/analyses/assembly/transcriptome_assembly/preprocessing/SRR6040095_scaffold_10.fastq.gz \
LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36
