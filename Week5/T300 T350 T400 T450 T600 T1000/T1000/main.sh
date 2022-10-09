#!/bin/bash

# JOB HEADERS HERE

#SBATCH --job-name=run-gromacs
#SBATCH --nodes=4
#SBATCH --tasks-per-node=4
#SBATCH --mem=8GB
#SBATCH --time=4:00:00
##SBATCH --gres=gpu:1

module load gromacs/openmpi/intel/2018.3

mpirun -np 4 gmx_mpi mdrun -s adp -multidir T300/ T350 T400/ T450 -deffnm adp_exchange4temps -replex 50