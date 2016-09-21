#! /bin/bash

######Prints the 5 years with the hottest temperatures and the 5 years with the lowest temperatures. #######
#
#Script by Miao Sun

cd ./data

for year in {1973..2016}        #For each year between 1973 and 2016
do
        for file in `ls ./$year/*.txt`  #Open each day's temperature file of each year
        do
                HT=`cut -f2 -d ',' $file|sort -n|tail -1`
                LT=`cut -f2 -d ',' $file|sort -n|head -1`
		for i in `cut -f2 -d ',' $file|sort -n|tail -1`
			if 
		if [[ "$i" != "-9999" && "$HT" != "0" ]]  #filter temperature values have no meanings
		then
     			echo -e "$year\t$LT\t$HT" >>../Hottest_Lowest_August_Days_1973-2016.txt.tmp
		fi
                #echo -e "$year\t$LT\t$HT" >>../Hottest_Lowest_August_Days_1973-2016.txt.tmp
        done
done

#cd ..

#for year in {1973..2016} #For each year between 1943 and 2016
#do
#        HT=`grep "$year" Hottest_Lowest_August_Days_1973-2016.txt.tmp|cut -f3|sort -n|tail -1`
#        LT=`grep "$year" Hottest_Lowest_August_Days_1973-2016.txt.tmp|cut -f2|sort -n|head -1`
#	echo -e "$year\t$HT" >>Temperature_Hottest_year.txt.tmp
#	echo -e "$year\t$LT" >>Temperature_Lowest_year.txt.tmp
#done

#echo "Five years with hottest temperatures:" >5_year_hottest_lowest_temperature.txt
#sort -k2nr Temperature_Hottest_year.txt.tmp|head -5 >>5_year_hottest_lowest_temperature.txt
#echo "Five years with lowest temperatures:" >>5_year_hottest_lowest_temperature.txt
#sort -k2nr Temperature_Lowest_year.txt.tmp|tail -5 >>5_year_hottest_lowest_temperature.txt

#rm *.tmp
