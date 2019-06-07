#! /bin/bash

echo "$1 $2"
echo "Welcome $1 $2"
echo "Timer is $(date +"%r")"

read -p "CERATE DIRECTORY NAME : " DIR
if [ -d $DIR ]
then
	echo "DIR Exists"
else
	mkdir -p $DIR
	echo "DIR CREATED"
fi

read -p "INPUT FILENAME IS : " FILE

if [ -e $FILE ]
then
 if [ -s $FILE ]
 then
 	cat $FILE
 else
	echo " File is Empty"
 fi
 else
	 echo "File Dose Not Exists"
fi
