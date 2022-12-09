#!/bin/bash
c=1
while [[ $c -le 10 ]]
do
echo "merhaba $c"
((c++))
done

echo "adınız"
read add
echo "soyad"
read soyad

if [[ ( $add = "gokhan" && $soyad = "usta" ) ]];
then
echo "evet"
else
echo "hayır"
fi

