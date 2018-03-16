#!/bin/bash

workdir="~/.vim/"

#Install pathogen agent
mkdir -p ~/.vim/autoload ~/.vim/bundle
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

#Install Emmet-vim // Web developers
cd ~/.vim/bundle && git clone https://github.com/mattn/emmet-vim.git

#Install NERDTree
cd ~/.vim/bundle && git clone https://github.com/scrooloose/nerdtree.git

#Install tagbar
go get -u github.com/jstemmer/gotags 
cd ~/.vim/bundle && git clone https://github.com/majutsushi/tagbar.git

#Install Vim-go // Go developers
cd ~/.vim/bundle && git clone https://github.com/fatih/vim-go.git

#Install Neocomplete
cd ~/.vim/bundle && git clone https://github.com/Shougo/neocomplete.vim.git

#Install Solidity syntax and completion
git clone https://github.com/tomlion/vim-solidity.git ~/.vim/bundle/vim-solidity

#Install Syntastic
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
cd ~/.vim/bundle && \
git clone --depth=1 https://github.com/vim-syntastic/syntastic.git
#Install python dependencies
#mkdir -p /tmp/python
#cd /tmp/python
#wget https://www.python.org/ftp/python/3.4.3/Python-3.4.3.tgz
#tar xzvf Python-3.4.3.tgz
#cd Python-3.4.3
#./configure
#make
#make install

#Install Jedi // Python developers
#apt-get install python-pip
#pip install --user jedi
#cd ~/.vim/bundle/ && git clone https://github.com/davidhalter/jedi-vim.git

