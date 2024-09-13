#!/bin/bash
#SBATCH --job-name=pipes
#SBATCH --ntasks=1
#SBATCH --nodes=1
#SBATCH --mem=1gb
#SBATCH --time=00:03:00
#SBATCH --partition=windfall
#SBATCH --account=windfall

grep -v "noncoding" gene_results.txt | \sed -E 's/^(Gene[0-4]+\s+)noncoding/\1coding/' | \awk '{print $1, $NF}'