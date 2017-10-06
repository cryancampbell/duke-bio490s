#!/bin/bash

for c in `seq 2 91991`; 
do
	if [ $(( $c % 1000 )) -eq 0 ] ; then
		echo $c of 91991 done
	fi

	f=`awk 'NR=='$c'' Fst_BSA.txt | cut -f1`;
	#echo $f
	d=`grep $f Position_S.lautus_genome.csv`;
	#echo $d
	if [ ! -z "$d" ] ; then 
		e=`echo $d | sed 's/_/,/g' | cut -d"," -f3,5,7,8,9,10`;
		#echo $e
		b=`awk 'NR=='$c'' Fst_BSA.txt | tr '\t' ,`
		g=`echo $e,$b`
		#echo $g
		
		ACC=`echo $e | cut -d"," -f5`
		NOI=`echo $e | cut -d"," -f6`

		#echo $ACC,$NOI
		if [ ! -z "$ACC" ]; then
			MAP=`echo accurate`
			POS=$ACC
		else
			MAP=`echo noisy`
			POS=$NOI
		fi
		#echo $MAP,$POS

		PREDATA=`echo $g | cut -d"," -f1-4,8-18`


		DATA=`echo $PREDATA,$MAP,$POS`
		echo $DATA >> Fst_BSA_wLinkageGrp.csv
	fi;
done;