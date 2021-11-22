#! /bin/bash
count_Materials=0
count_O=0
count_NO=0
sed -i 'stocks Duplicate' bell.csv
while read Materials Stock Duplicates;
do
	count_Materials=$(expr $count_Materials + 1)
	if ["$Stocks" == 1* ]; then
			count_O=$(expr $count_O + 1 )
		else 
			count_NO=$(expr $count_NO + 1 )
	fi
	done
done < bell.csv