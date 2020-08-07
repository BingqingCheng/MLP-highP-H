Data repository of "Evidence for supercritical behaviour of high-pressure liquid hydrogen"

Bingqing Cheng, Guglielmo Mazzola, Chris J. Pickard, and Michele Ceriotti

Contains three sets of neural network potentials (NNPs) of high-pressure hydrogen, based on PBE, BLYP, and variational Quantum Monte Carlo (QMC) reference calculations.

Input files for running molecule dynamic simulations using the NNPs are also provided.

=========================

* ./pbe-nnp-potential/: the neural network potential (NNP) for high pressure H based on PBE-DFT. Two versions (v1 and v2) are included. v2 is the version used to generate the results reported in the manuscript. v1 is an earlier version, which is almost as accurate! The subdirectory /pbe-reference/ contains the CASTEP input files for the PBE DFT reference calculations.

* ./blyp-nnp-potential/: the neural network potential for high pressure H based on BLYP-DFT. The subdirectory /blyp-reference/ contains the CASTEP input files for the BLYP DFT reference calculations.

* ./vmc-nnp-potential/: the neural network potential for high pressure H based on variational Quantum Monte Carlo.

* ./input-nnp-md-npt/: NPT MD simulations performed using NNP. MD simulations using NNPs are in general performed using LAMMPS+n2p2 library. Copy and paste the three N2P2 files (input.nn scaling.data weight.001.data) in the selected *-nnp-potential folder to the same directory to run the simulations.

* ./input-nnp-WTmetaD/: Well-tempered MD simulations performed using a NNP, using LAMMPS+n2p2 library+PLUMED plugin.

* ./input-nnp-rss/: Input for running random structure searches using a NNP, using AIRSS package.

* ./input-nnp-enthalpy-solid-phases/: Input for computing enthalpies of solid phases using a NNP, using AIRSS package and LAMMPS+n2p2 library.

* ./pbe-nnp-cooling-heating-nst-1728/: Inputs for running cooling and heating MD simulations using the MLP based on PBE DFT. solid-structures.zip contains the solid structures obtained at the end of the cooling simulations.

* ./simulations-PBE-DFT-aimd/: Direct AIMD simulations using DFT with PBE functional. We use quantum expresso/6.2.0 for the DFT calculations.




