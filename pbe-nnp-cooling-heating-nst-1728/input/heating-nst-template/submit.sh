#!/bin/bash

#SBATCH --job-name=NNP-mpi
#SBATCH --get-user-env
#SBATCH --nodes=3
#SBATCH --ntasks 84
#SBATCH --time=72:00:00

export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:~/programlist/n2p2/lib/

module load intel intel-mpi
module load python gsl fftw

export OMP_NUM_THREADS=1

press=$1

sed -i "s/PRESSURE/${press}/g" in.lmp

if [ -e ../cooling-npt-P-${press}/data.solid-P-${press} ]; then 
cp ../cooling-npt-P-${press}/data.solid-P-${press} .
fi

srun -n 84 lmp_fidis < in.lmp > lmplog  &

wait
cd ..

