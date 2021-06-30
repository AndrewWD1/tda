#!/bin/bash

#SBATCH --nodes=1
#SBATCH --partition=smem
#SBATCH --time=00:10:00
#SBATCH --ntasks=1
#SBATCH --job-name=tda_script


module purge
source /curc/sw/anaconda3/latest
conda activate mycustomenv


python3 anthony_iso.py

