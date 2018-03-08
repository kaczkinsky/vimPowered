#!/bin/sh

#git clone https://github.com/golang/go
#cd go/
#./all.bash

arch=$(uname -m)
if [ $arch = "x86_64" ]
then 
	wget https://dl.google.com/go/go1.9.4.linux-amd64.tar.gz
	tar -xvf go1.9.4.linux-amd64.tar.gz go/ #/usr/local/
else
	wget https://dl.google.com/go/go1.9.4.linux-386.tar.gz
	tar -xvf go1.9.4.linux-386.tar.gz go/ #/usr/local
fi
