#!/bin/bash
#### Gets the high temperature for each day in August for each year ######
#
#Script by Miao Sun

cd ./data

for year in {1973..2016} 	#For each year between 1973 and 2016
do
	#cd $year 	#Open each year's folder
	for file in `ls ./$year/*.txt`	#Open each day's tmp file of each year
	do
		day=`echo $file|sed 's/\.\/'$year'\/GNV_'$year'//g;s/.txt//g'`
		HT=`cut -f2 -d ',' $file|sort -n|tail -1`	
		#if [$HT -eq "TemperatureF"]; then
		#	do
		#	sed 's/'$HT'/NA/g
		#fi
		echo -e "$year\t$day\t$HT" >>../Hottest_August_Days_1973-2016.txt
	done
done

cd ..

sed -i 's/TemperatureF/NA/g' Hottest_August_Days_1973-2016.txt
sed -i 1'i\Year\tDate\tTemperature(F)' Hottest_August_Days_1973-2016.txt
