###############################################################################
# MD simulation for PBE H with NN potential
###############################################################################

###############################################################################
# VARIABLES
###############################################################################
variable runnerCutoff    equal  CUTOFF                                            # largest symmetry function cutoff (Angstrom)
variable runnerDir       string "../../nnp"	                        # directory containing RuNNer files
###############################################################################
# SETUP
###############################################################################
# set up pair style runner
pair_style nnp dir ${runnerDir} showew no showewsum 1000 resetew yes maxew 200000000 cflength 1.8897261328 cfenergy 0.0367493254
# set up pair style coefficients
pair_coeff * * ${runnerCutoff}                                                          
