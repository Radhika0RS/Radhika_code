#!/bin/bash
#SBATCH --job-name=slurm_code
#SBATCH --ntasks=1
#SBATCH --nodes=1
#SBATCH --mem=1gb
#SBATCH --time=00:03:00
#SBATCH --partition=windfall
#SBATCH --account=windfall

cd ~/ccbb_project/
pwd

touch ~/ccbb_project/coding_genes.txt
touch ~/ccbb_project/final_try.txt

cat | grep -v "noncoding" gene_results.txt > coding_genes.txt

sed -E 's/(^Gene[0-4]+\s+)0/\17/' gene_results.txt

awk '{print $1, $5}' gene_results.txt