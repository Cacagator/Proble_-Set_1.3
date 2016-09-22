#! /bin/bash

######Prints the 5 years with the hottest temperatures and the 5 years with the lowest temperatures. #######
#
#Script by Miao Sun

cd ./data

for year in {1973..2016}        #For each year between 1973 and 2016
do
        for file in `ls ./$year/*.txt`  #Open each day's temperature file of each year
        do
		TMP=`cut -f2 -d ',' $file|sort -n|tail -1`
                echo -e "$year\t$TMP" >>../Hot_Temperature_August_Days_1973-2016.txt.tmp
        done
done

cd ..

sed -i 's/TemperatureF/NA/g' Hot_Temperature_August_Days_1973-2016.txt.tmp #smoothing missing value

#output the 5 years with the hottest temperatures and the 5 years with the lowest temperatures into a single txt file
echo "Five years with hottest temperatures:" >5_year_hottest_lowest_temperature.txt
sort -k2nr Hot_Temperature_August_Days_1973-2016.txt.tmp|uniq|head -5 >>5_year_hottest_lowest_temperature.txt
echo "Five years with lowest temperatures:" >>5_year_hottest_lowest_temperature.txt
sort -k2 Hot_Temperature_August_Days_1973-2016.txt.tmp|uniq|head -5 >>5_year_hottest_lowest_temperature.txt

rm *.tmp
