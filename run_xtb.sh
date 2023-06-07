#!/bin/bash -l
#SBATCH -J Ar
#SBATCH -o sn2-xtb.output
#SBATCH -e sn2-xtb.outerr
# #SBATCH --nodes=2
#SBATCH --ntasks=64
#SBATCH --cpus-per-task=1
#SBATCH --mem-per-cpu=32G
#SBATCH --mail-user=dmc59@njit.edu
#SBATCH --mail-type=END,FAIL
#SBATCH -p gor
# #SBATCH -t 30-00:00:00

module load intel-compilers/2021.2.0  impi/2021.2.0 CP2K/8.2

mpirun -n 64 cp2k.popt -i xtb_input.inp -o xtb_input.out
