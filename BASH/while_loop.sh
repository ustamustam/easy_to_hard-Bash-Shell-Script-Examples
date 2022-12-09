#!/bin/bash
#***************************************************************
#while do döngüsünün kullanımı aşağıdaki gibidir.
#koşul sağlandıkça döner
# ayrıca "break"  ile de loop dışına çıkabilir.
: '
while [ condition ]
do
   command1
   command2
   command3
done
'
#***************************************************************
#!/bin/bash
valid=true
count=1
while [ $valid ]
do
echo $count

if [ $count -eq 5 ];
then
break
fi
((count++))

done
#***************************************************************




#***************************************************************
#!/bin/bash
c=1
while [ $c -le 5 ]
do
	echo "Welcone $c times"
	(( c++ ))
done
#***************************************************************

#!/bin/bash
x=1
while [ $x -le 5 ]
do
  echo "Welcome $x times"
  x=$(( x + 1 ))
done

#***************************************************************
x=1; while  [ $x -le 5 ]; do echo "Welcome $x times" $(( x++ )); done


#***************************************************************

#!/bin/bash
FILE=$1
# read $FILE using the file descriptors
exec 3<&0
exec 0<$FILE
while read line
do
	# use $line variable to process line
	echo $line
done
exec 0<&3
#***************************************************************