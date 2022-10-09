#!/bin/bash
for i in {1..9};do
    echo -e "1\n0\n\n"|gmx_mpi  trjconv -s step5_${i}.tpr -f step5_${i}.xtc -o step5_${i}_noPBC.xtc -pbc mol -center
    echo -e "1\n\n\n"|gmx_mpi  trjconv  -f step5_${i}noPBC.xtc -o step5${i}noPBC_nowater.xtc  -s step5${i}.tpr -pbc whole
    echo -e "12 13 14 16 18 23\n\n\n"|gmx_mpi energy -f step5_${i}.edr -o step5_${i}.xvg

   # gmx trjconv -f md.xtc -o new.xtc -s md.tpr -pbc whole
done