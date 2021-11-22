paste -d"\n" extract3.csv extract4.csv
while read Materials0 Stocks Duplicates0 Materials1 Duplicates1 ;
do
    if [ "$Materials0" == "$Materials1" ]
    then
        $Materials1++
        $Duplicates0 = $Duplicates1
        #echo $Materials0
    else 
        $Materials0++
       # echo $Materials1
    fi

done
echo $Materials1
echo $Materials0
echo extract4.csv 