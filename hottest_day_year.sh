#! /bin/bash

#####For each year gets the hottest temperature in August, creating a file with year and the highest temperature.#####

###Script by Miao Sun

###get each hottest temperature
for year in {1973..2016} #For each year between 1943 and 2016
do
	Tmp=`grep "$year" Hottest_August_Days_1973-2016.txt|cut -f3|sort -n|tail -1` #for each year get the highest temperature among 31 days in August
	echo -e "$year\t$Tmp" >>Temperature_Hottest_year.txt #output
done
sed -i 1'i\Year\tTemperature(F)' Temperature_Hottest_year.txt #adding header
