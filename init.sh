#!/bin/bash

#if [ "$USER" != "root" ]
#then exit 2
#fi

chmod +x ctags-install.sh git-install.sh go-install.sh go-params.sh vim-plugins.sh vim-params.sh

# VIM current configuration backup
# this following is not avalaible on based-on fedora operating systems
#vimrc_detect=$(find /etc/ -iname "vimrc") 
#usr_vimrc_detect=$(find ~ -iname ".vimrc")
vimrc_detect=$(whereis /etc/vim/vimrc)
usr_vimrc_detect=$(whereis ~/.vimrc)
if [ $vimrc_detect ]
then 
	mv /etc/vim/vimrc /etc/vim/vimrc.old
	cp -arp vim/vimrc /etc/vim/ && cp -arp vim/vimrc /usr/share/vim/vimrc
fi
if  [ $usr_vimrc_detect ]
then
	mv ~/.vimrc ~/.vimrc.old
	cp -arp vim/vimrc ~/.vimrc && cp -arp vim/vimrc /usr/share/vim/vimrc
fi

# Lauch installation scripts
./git-install.sh && \
./go-install.sh && \
./go-params.sh && \
# Go installation test
go build test.go && ./test && rm ./test && \
./ctags-install.sh && \
./vim-params.sh && \
./vim-plugins.sh && \
echo "Successful installation"
