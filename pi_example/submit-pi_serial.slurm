#!/bin/bash

#SBATCH --job-name=pi_serial
#SBATCH --account=cis240128p
#SBATCH --partition=RM-shared
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --mem=1G
#SBATCH --time=00:20:00
#SBATCH --output=out/slurm-%x.out
#SBATCH --error=out/slurm-%x.err

module load python numpy

echo "Job ID is $SLURM_JOB_ID."
echo "Executing on the machine: " $(hostname)

python pi_serial.py > out/pi_serial.out
