#!/bin/bash

#SBATCH --job-name=pi_parallel
#SBATCH --account=cis240128p
#SBATCH --partition=RM
#SBATCH --nodes=3
#SBATCH --ntasks-per-node=4
#SBATCH --mem=1G
#SBATCH --time=00:20:00
#SBATCH --output=out/slurm-%x.out
#SBATCH --error=out/slurm-%x.err

module load anaconda3
conda activate pi_env

srun python pi_parallel.py > out/pi_parallel.out
