#!/bin/sh

# Download ctags from source
wget http://prdownloads.sourceforge.net/ctags/ctags-5.8.tar.gz

tar -xvf ctags-5.8.tar.gz
cd ctags-5.8/
# binaries sould be placed in /usr/local/bin/ctags
./configure && make && make install && make clean
