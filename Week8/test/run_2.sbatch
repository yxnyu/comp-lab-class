#!/bin/bash

#SBATCH --job-name=lammps
#SBATCH --nodes=8
#SBATCH --tasks-per-node=8
#SBATCH --time=04:00:00
#SBATCH --mem=16GB

source /scratch/work/courses/CHEM-GA-2671-2022fa/software/lammps-gcc-30Oct2022/setup_lammps.bash

for i in `seq 0.5 0.1 1.1`
do
mpirun lmp -var density $i -in ../Inputs/2dWCA2.in -log LOGFILE$i.log
done

mpirun lmp -var density 1 -in ../Inputs/2dWCA2.in -log LOGFILE1.log