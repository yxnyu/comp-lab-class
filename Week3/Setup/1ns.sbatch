#!/bin/bash

#SBATCH --job-name=gromacs
#SBATCH --nodes=1
#SBATCH --tasks-per-node=4
#SBATCH --time=04:00:00
#SBATCH --mem=8GB

module purge
module load gromacs/openmpi/intel/2020.4

srun -n 1 gmx_mpi grompp -f md.mdp -c npt.gro -t npt.cpt -p topol.top -o md_0_1.tpr

srun -n 1 gmx_mpi mdrun -deffnm md_0_1
