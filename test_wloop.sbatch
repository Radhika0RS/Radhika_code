#!/bin/bash
#SBATCH --job-name=test_wloop
#SBATCH --ntasks=1
#SBATCH --nodes=1
#SBATCH --mem=1gb
#SBATCH --time=00:03:00
#SBATCH --partition=windfall
#SBATCH --account=windfall
#SBATCH -o %x.out
#SBATCH --mail-type=END

x=1
while   [ $x -le 10 ]
do
        echo "Our hypothesis is right" > "important_results$x.txt"
        x=$(( x+1 ))
done