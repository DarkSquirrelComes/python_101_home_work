#!/bin/bash

recycle=~/RECYCLE

#check if ~/RECYCLE exists
if ! [ -e $recycle ]
then
	mkdir $recycle
fi

#move file to ~/RECYCLE
if [ -e $1 ]
then
	mv $1 $recycle
else
	echo "No such file"
fi

#delete old files
for filename in `find $recycle/* -cmin +10080`; do
	rm $filename
done
