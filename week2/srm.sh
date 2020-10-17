#!/bin/bash

recycle=~/RECYCLE

if ! [ -e $recycle ]
then
	mkdir $recycle
fi

if [ -e $1 ]
then
	mv $1 $recycle
else
	echo "No such file"
fi

