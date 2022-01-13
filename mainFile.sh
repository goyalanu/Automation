#step-1 extract the required col from given sheet Article no and stocks
while read data
do
a1=`echo $data| cut -c15-25`
a2=`echo $data | cut -c26-32`
echo "$a1,$a2" >> extract.csv
done < sub.dat
#Step -2 finding duplicates 
sort extract.csv | uniq --count > extract1.csv #Uniq|Sort to count duplicates take input from cell.sh 

#step-3 splitting the data from single col to 2 columns for extracting duplicate values
while read data
do
a1=`echo $data| cut -c1-2`
a2=`echo $data | cut -c2-12`
echo "$a1,$a2" >> extract2.csv
done < extract1.csv              # split the col1 into 2 col so article no. and duplicates

#step-3 naming the col of duplicate Material Stocks
(echo -e "Duplicates0","Materials0","Stocks"; cat extract2.csv) > extract3.csv #for inserting the header 

#step-4 Naming the col of file from cell.sh for proper comparison and adding duplicates
(echo -e "Materials1","Stocks","Duplicate1"; cat extract.csv) > extract4.csv # for inserting header in file from cell.sh

#step 5 counting the no of duplicates stocks 

#step - 5 Adding Duplicates to extract4.csv which is the naming version of extract.csv
paste -d"\n" extract3.csv extract4.csv
while read Materials0 Stocks Duplicates0 Materials1 Duplicates1 ;
do
    if ["$Materials0" == "$Materials1"]
then
    $Materials1 ++
    $Duplicates0 = $Duplicates1
    echo $Materials0
else 
    $Materials0 ++
    echo $Materials1
fi
echo extract4.csv 

done 

