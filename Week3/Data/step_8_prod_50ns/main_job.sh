#!/bin/bash
# JOB HEADERS HERE

#SBATCH --job-name=run-gromacs
#SBATCH --nodes=1
#SBATCH --tasks-per-node=48
#SBATCH --mem=24GB
#SBATCH --time=09:00:00
##SBATCH --gres=gpu:1 
module purge
module load gromacs/openmpi/intel/2020.4
mpirun gmx_mpi  grompp -f md.mdp -c npt.gro -t npt.cpt -p topol.top -o md_0_1.tpr
mpirun gmx_mpi  mdrun -deffnm md_0_1

#mpirun gmx_mpi  mdrun -deffnm md_0_1 -nb gpu"#!/bin/bash

