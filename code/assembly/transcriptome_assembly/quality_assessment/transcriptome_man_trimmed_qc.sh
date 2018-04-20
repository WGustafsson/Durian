#!/bin/bash

module load bioinfo-tools FastQC

fastqc /home/wigu2376/Durian/analyses/assembly/transcriptome_assembly/preprocessing/* -o /home/wigu2376/Durian/analyses/assembly/transcriptome_assembly/quality_assessment/manually_trimmed
