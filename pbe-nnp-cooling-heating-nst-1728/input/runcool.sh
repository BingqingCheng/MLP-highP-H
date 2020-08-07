for p in `seq 50 25 125`; do
cp -r cooling-npt-template cooling-npt-P-$p
cd cooling-npt-P-$p
sed -i -e 's/HIGHT/1200/' -e "s/RANDOM/$RANDOM/" in.lmp
#cp -r heating-npt-template heating-npt-P-$p
#cd heating-npt-P-$p
sbatch submit.sh $p
cd ..
done 

for p in `seq 150 25 275`; do
cp -r cooling-npt-template cooling-npt-P-$p
cd cooling-npt-P-$p
sed -i -e 's/HIGHT/1000/' -e "s/RANDOM/$RANDOM/" in.lmp
#cp -r heating-npt-template heating-npt-P-$p
#cd heating-npt-P-$p
sbatch submit.sh $p
cd ..
done

for p in `seq 300 25 400`; do
cp -r cooling-npt-template cooling-npt-P-$p
cd cooling-npt-P-$p
sed -i -e 's/HIGHT/700/' -e "s/RANDOM/$RANDOM/" in.lmp
#cp -r heating-npt-template heating-npt-P-$p
#cd heating-npt-P-$p
sbatch submit.sh $p
cd ..
done


