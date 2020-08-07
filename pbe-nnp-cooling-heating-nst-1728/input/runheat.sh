for p in `seq 50 25 125`; do
if [ -e cooling-npt-P-$p/data.solid-P-$p ] && [ ! -e heating-npt-P-$p ] ; then
cp -r heating-npt-template heating-npt-P-$p
cd heating-npt-P-$p
sed -i -e 's/HIGHT/1400/' -e "s/RANDOM/$RANDOM/" in.lmp
sbatch submit.sh $p
cd ..
fi
done 

for p in `seq 150 25 275`; do
if [ -e cooling-npt-P-$p/data.solid-P-$p ] && [ ! -e heating-npt-P-$p ] ; then
cp -r heating-npt-template heating-npt-P-$p
cd heating-npt-P-$p
sed -i -e 's/HIGHT/1200/' -e "s/RANDOM/$RANDOM/" in.lmp
sbatch submit.sh $p
cd ..
fi
done

for p in `seq 300 25 400`; do
if [ -e cooling-npt-P-$p/data.solid-P-$p ] && [ ! -e heating-npt-P-$p ] ; then
cp -r heating-npt-template heating-npt-P-$p
cd heating-npt-P-$p
sed -i -e 's/HIGHT/1100/' -e "s/RANDOM/$RANDOM/" in.lmp
sbatch submit.sh $p
cd ..
fi
done


