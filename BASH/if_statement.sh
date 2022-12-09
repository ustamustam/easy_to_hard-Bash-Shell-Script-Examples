#!/bin/bash
n=10
if [ $n -lt 10 ];
then
echo "It is a one digit number"
else
echo "It is a two digit number"
fi


#****************************************************************
#!/bin/bash

echo "Enter username"
read username
echo "Enter password"
read password
#                
if [[ ( $username == "admin" && $password == "secret" ) ]]; then
echo "valid user"
else
echo "invalid user"
fi

#****************************************************************
#!/bin/bash
salary=1000
expenses=800
#Check if salary and expenses are equal
if [ $salary == $expenses ];
then
    echo "Salary and expenses are equal"
#Check if salary and expenses are not equal
elif [ $salary != $expenses ];
then
    echo "Salary and expenses are not equal"
fi