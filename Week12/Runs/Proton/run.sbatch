#!/bin/bash

#SBATCH --job-name=proton_aimd_1ns_every0.5fs
#SBATCH --nodes=1
#SBATCH --tasks-per-node=12
#SBATCH --time=04:00:00
#SBATCH --mem=20GB
#SBATCH --reservation=gmh4

module load cp2k/openmpi/intel/20201212

mpirun -np 12 cp2k.popt -i proton.inp -o proton.log