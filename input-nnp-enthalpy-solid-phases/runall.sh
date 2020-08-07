for a in H-Cmce-12-II H-Cmce-4-II H-C2c-24-II H-Fmmm-2-I H-P21c-8-I H-P6122-36-I H-P63m-16-I; do 
	for p in `seq 50 50 400`; 
	do bash singlerun.sh $a $p; wait; 
	done; done
