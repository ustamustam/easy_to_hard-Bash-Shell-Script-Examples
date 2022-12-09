#!/bin/bash
for (( counter=10; counter>0; counter-- ))
do
echo -n "$counter "
printf "\n"
done
printf "\n"

#*******************************************************************

while [ $counter -le 5  ]
do
echo "mer $counter"
(( counter++ ))
done

