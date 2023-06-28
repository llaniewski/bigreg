#!/bin/bash --login
#SBATCH --account=director2188-gpu
#SBATCH --partition=gpu
#SBATCH --ntasks=5
#SBATCH --ntasks-per-node=5
#SBATCH --cpus-per-task=1
#SBATCH --gpus=1
#SBATCH --time=0:10:00

set -e

module load rocm/5.0.2 r/4.1.0

make

rocprof -i prof_settings.txt -o results.metrics.csv ./main

Rscript print.R
