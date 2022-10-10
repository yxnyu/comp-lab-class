#!/bin/bash

# JOB HEADERS HERE

#SBATCH --job-name=run-gromacs
#SBATCH --nodes=1
#SBATCH --tasks-per-node=1
#SBATCH --mem=8GB
#SBATCH --time=4:00:00
##SBATCH --gres=gpu:1

module load gromacs/openmpi/intel/2018.3

gmx_mpi grompp -f adp_T350.mdp -c adp.gro  -p adp.top -o adp_T350.tpr
gmx_mpi mdrun -deffnm adp_T350