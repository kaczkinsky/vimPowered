#!/bin/bash
echo "export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/bin/X11" >> ~/.profile
echo "export GOROOT=`pwd`/go" >> ~/.profile
echo "export GOBIN=`pwd`/go/bin" >> ~/.profile
echo "export PATH=$PATH:`pwd`/go/bin" >> ~/.profile
#read -p "Would you want to create a Go workspace ? [O/n] " res
#if [ "$res" = "O" ] || [ "$res" = "o" ]
#     then ...
mkdir goworklab/	
echo "export GOPATH=/home`pwd`/goworklab" >> ~/.profile
echo "A go workspace directory have been created. The GOPATH environnment have been defined as : /home`pwd`/goworklab"
. ~/.profile
env=$(go env)
echo GO Environnment : \n $env 

