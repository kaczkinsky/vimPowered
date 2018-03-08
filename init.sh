#!/bin/sh

#if [ $USER != root ] 
#then exit 2
#fi

chmod +x ctags-install.sh git-install.sh go-install.sh go-params.sh vim-plugins.sh vim-params.sh

# VIM current configuration backup
vimrc_detect=$(find /etc/ -iname "vimrc")
usr_vimrc_detect=$(find ~ -iname ".vimrc")
if [ $vimrc_detect ]
then 
	mv /etc/vim/vimrc /etc/vim/vimrc.old
	cp vim/vimrc /etc/vim/
fi
if  [ $usr_vimrc_detect ]
then
	mv ~/.vimrc ~/.vimrc.old
	cp vim/vimrc ~/.vimrc
fi

# Lauch installation scripts
./git-install.sh && \
./go-install.sh && \
./go-params.sh && \
# Go install test
go build test.go && ./_test && rm _test && \
./ctags-install.sh && \
./vim-plugins.sh && \
./vim-params.sh && \
echo "Installation complete"


