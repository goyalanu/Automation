while read Materials0 Stocks Duplicates0 Materials1 Duplicates1 ;
do
    if ["$Materials0" == "$Materials1"]
then
    $Materials1 ++
    $Duplicates0 = $Duplicates1
else 
    "$Materials0" ++
fi

done < extract3.csv < extract4.csv
echo $Materials1
echo $Materials0
cat extract4.csv 