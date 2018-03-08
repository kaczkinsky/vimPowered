#!/bin/sh
echo "export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/bin/X11" >> ~/.profile
echo "export GOROOT=`pwd`/go" >> ~/.profile
echo "export GOBIN=`pwd`/go/bin" >> ~/.profile
echo "export PATH=$PATH:`pwd`/go/bin" >> ~/.profile
read -p "Would you want to create a Go workspace ? [O/n] " res
if [ "$res" = "O" ] || [ "$res" = "o" ]
	then mkdir goworks/	
	echo "export GOPATH=/home/`pwd`/goworks" >> ~/.profile
	echo "A go workspace directory have been created. The GOPATH environnment have been defined as : /home/`pwd`/goworks"
fi
source ~/.profile
env=$(go env)
echo GO Environnment : \n $env 

