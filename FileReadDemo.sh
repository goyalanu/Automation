#! /bin/bash
count_Materials=0
count_O=0
count_NO=0
while read Materials Stock Duplicates;
do
	count_Materials=$(expr $count_Materials + 1)
	if ["$Stocks" == "0"]; then
			count_O=$(expr $count_O + 1 )
		else 
			count_NO=$(expr $count_NO + 1 )
	fi
	done
done < sript_1.csv
echo "Total number of materials from TC - $count_Materials"
echo "Total number of materials which are having zero quantity - $count_O"
echo "Total number of materials which having stock quantity - $count_NO"



