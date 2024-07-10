#!/bin/bash
#SBATCH --account=def-gagnoned
#SBATCH --cpus-per-task=2
#SBATCH --time=00:30:00
#SBATCH --mem=16G
#SBATCH --output=FastQC_after.out

# Load required module
module load StdEnv/2023
module load fastqc/0.12.1

# Quality check of reads using FastQC
mkdir ./FastQC_output_after
fastqc -o ./FastQC_output_after ./TrimmedSequence_20240611/*clean.fastq.gz
