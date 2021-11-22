while read data
do
a1=`echo $data| cut -c15-25`
a2=`echo $data | cut -c26-32`
echo "$a1,$a2" >> extract.csv
done < sub.dat
