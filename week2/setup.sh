#!/bin/bash

if ! [ -e ~/bin ]
then
	mkdir ~/bin
fi

mv ./python_101_home_work/week2/srm.sh ~/bin/

if ! [ -e ~/.bash_profile ]
then
	touck ~/.bash_profile
fi

echo 'export PATH="${PATH}:~/bin"' >> ~/.bash_profile
source ~/.bash_profile
