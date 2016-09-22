#! /bin/bash

######Prints the 5 years with the hottest temperatures and the 5 years with the lowest temperatures. #######
#
#Script by Miao Sun

#output the 5 years with the hottest temperatures and the 5 years with the lowest temperatures into a single txt file
echo "Five years with hottest temperatures:" >5_year_hottest_lowest_temperature.txt
sort -k2nr Temperature_Hottest_year.txt|uniq|head -5 >>5_year_hottest_lowest_temperature.txt
echo "Five years with lowest temperatures:" >>5_year_hottest_lowest_temperature.txt
sort -k2 Temperature_Hottest_year.txt|uniq|head -5 >>5_year_hottest_lowest_temperature.txt
