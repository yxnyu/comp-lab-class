#!/bin/bash
#SBATCH --job-name=LAMMPS
#SBATCH --nodes=1
#SBATCH --tasks-per-node=48
#SBATCH --mem=90GB
#SBATCH --time=24:00:00

source /scratch/work/courses/CHEM-GA-2671-2022fa/software/lammps-gcc-30Oct2022/setup_lammps.bash
#create system
mpirun lmp -var configfile ../Inputs/n360/kalj_n360_create.lmp -var id 1 -in ../Inputs/create_3d_binary.lmp
#equilibration cycles
temperatures=('1.5' '1.0' '0.9' '0.8' '0.7' '0.65' '0.6' '0.55' '0.5' '0.475' '0.45')
for T in "${temperatures[@]}"
do
    echo "cooling down to T_$T"
    mpirun lmp -var configfile ../Inputs/n360/kalj_n360_T$T.lmp -var id 1 -in ../Inputs/anneal_3d_binary.lmp
done
