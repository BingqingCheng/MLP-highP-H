#!/bin/bash

#SBATCH --job-name=NNP-mpi
#SBATCH --get-user-env
#SBATCH --nodes=1
#SBATCH --ntasks 28
#SBATCH --time=24:00:00

export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:~/programlist/n2p2/lib/

module load intel intel-mpi
module load python gsl fftw

export OMP_NUM_THREADS=1

temp=$1
press=$2

sed -i "s/TEMPERATURE/${temp}/g" in.lmp
sed -i "s/TEMPERATURE/${temp}/g" plumed.dat
sed -i "s/PRESSURE/${press}/g" in.lmp
sed -i "s/RANDOM/$RANDOM/" in.lmp
srun -n 28 lmp_fidis_plumed_n2p2 < in.lmp > lmplog  &

wait
cd ..

