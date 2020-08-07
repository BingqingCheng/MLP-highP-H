name=$1
pp=$2
bash ../res2lmpin.sh ../H-${name}.res > $name-P-$pp.conf
sed -e "s/NAMENOW/${name}/g" -e "s/PRESSURE/$pp/" H.in > $name-P-$pp.in
lammps < ${name}-P-$pp.in
wait

# Construct a fake Castep output file

grep Pressure: ${name}-P-$pp.lammps | tail -1 | awk '{print " *  Pressure: "$2}' > ${name}-P-$pp.castep
grep Enthalpy: ${name}-P-$pp.lammps | tail -1 | awk '{print " PP3: Final Enthalpy     = "$2}' >> ${name}-P-$pp.castep
grep Volume:   ${name}-P-$pp.lammps | tail -1 | awk '{print "Current cell volume = "$2}' >> ${name}-P-$pp.castep

# Save the final structure in Castep -out.cell format

lammps2cell ${name}-P-$pp > ${name}-P-$pp-out.cell

castep2res ${name}-P-$pp | sed -e "s/${name}-P-$pp/H_${pp}p0-$name/" -e "s/LAMM/H/" -e "s/LAM/H/"> H_${pp}p0-${name}.res

rm ${name}-P-$pp.castep ${name}-P-$pp.conf ${name}-P-$pp.in ${name}-P-$pp.lammps ${name}-P-$pp.lammpstrj ${name}-P-$pp-out.cell
