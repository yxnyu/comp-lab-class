#!/bin/bash

#SBATCH --job-name=lammps
#SBATCH --nodes=8
#SBATCH --tasks-per-node=8
#SBATCH --time=04:00:00
#SBATCH --mem=8GB

source /scratch/work/courses/CHEM-GA-2671-2022fa/software/lammps-gcc-30Oct2022/setup_lammps.bash

mpirun lmp -var density 0.5 -in ../Inputs/2dWCA.in


