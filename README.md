# Proble_-Set_1.3

We looked a bit at for loops in bash. For examples have a look at the notes from 9/7/16, this site http://www.cyberciti.biz/faq/bash-for-loop/ (Links to an external site.) or Google.

There’s a lot of questions about if the world temperature is warming. Let’s see what we can find for Gainesville, for the month of August. It looks like WeatherUnderground has data for GNV dating back to 1973. I have downloaded an placed the data for each day in August in /ufrc/zoo6927/share/PS1.3/data/

For each year between 1973 and 2016, there is a folder with the weather for every day in August. Here's the scriptView in a new window that I used to download the data (the script is also on the cluster at /ufrc/zoo6927/share/PS1.3/getWeather.sh). It's similar to the one we wrote for the github.com example, but adds some loops. Look at the script and make sure you understand how it works. You could make a copy in your directory and run it, but it takes a while to get all the data (minutes, not hours, so, not too bad if you want...)

This script can serve as the starting point for your own script for this problem set. You don't need to download the data (you have read access to /ufrc/zoo6927/share/PS1.3/data/), but the loops in the script will help you get started.

Write a script that:

# need to make sure the "data" folder is at the same directory as all the scripts

#1) Gets the high temperature for each day in August for each year (again, we've done this, so look back at the previous scripts). 
##Script hot_days.sh will do the job, and resultant file is Hottest_August_Days_1973-2016.txt

#2) For each year gets the hottest temperature in August, creating a file with year and the highest temperature. This should probably go into a file for each year. This cannot go in /ufrc/zoo6927/share/PS1.3/data/ as you cannot write there, they should be in your own directory.
##Script hottest_day_year.sh will do the job, and resultant file is Temperature_Hottest_year.txt.

#3) Prints the 5 years with the hottest temperatures and the 5 years with the lowest temperatures. 
##Script HLowest_5Y_TMP.sh will do the job, and resultant file is "5_year_hottest_lowest_temperature.txt".
