#counting the Materials which are having zero quantity and stocks quantity
count_1=0
count_2=0
while read Duplicates0 Materials0 Stocks
do 
    if [ $Stocks==0 ]; then
            count_1=$(expr $count_1 + 1 )
    else
            count_2=$(expr $count_2 + 1 ) 
    fi
done < extract3.csv
echo $count_1
echo $count_2