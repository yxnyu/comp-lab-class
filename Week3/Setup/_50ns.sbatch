#!/bin/bash

#SBATCH --job-name=gromacs
#SBATCH --nodes=1
#SBATCH --tasks-per-node=10
#SBATCH --time=72:00:00
#SBATCH --mem=20GB

module purge
module load gromacs/openmpi/intel/2020.4

srun -n 10 gmx_mpi grompp -f md_1_50ns.mdp -c npt.gro -t npt.cpt -p topol.top -o md_1_50ns.tpr

srun -n 10 gmx_mpi mdrun -deffnm md_1_50ns
