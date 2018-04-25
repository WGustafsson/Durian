#!/bin/bash

#navigate to quast location (on local BMC Linux system, change for running elsewhere)
cd /home/wiktgust/quast-4.6.3

python quast.py /home/wiktgust/Durian/analyses/assembly/assembly_evaluation/input/contigs.fasta -R \
/home/wiktgust/Durian/analyses/assembly/assembly_evaluation/input/reference.fasta -o \
/home/wiktgust/Durian/analyses/assembly/assembly_evaluation/output

