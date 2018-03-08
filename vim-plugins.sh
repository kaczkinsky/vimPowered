#!/bin/bash

workdir="~/.vim" #~/.vim

#Install pathogen agent
mkdir -p ~/.vim/autoload ~/.vim/bundle
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

#Install Emmet-vim // Web developers
cd ~/.vim/bundle && git clone https://github.com/mattn/emmet-vim.git && cd $workdir

#Install NERDTree
cd ~/.vim/bundle && git clone https://github.com/scrooloose/nerdtree.git && cd $workdir

#Install tagbar
go get -u github.com/jstemmer/gotags 
cd ~/.vim/bundle && git clone https://github.com/majutsushi/tagbar.git&& cd $workdir

#Install Vim-go // Go developers
cd ~/.vim/bundle && git clone https://github.com/fatih/vim-go.git && cd $workdir

#Install Neocomplete
cd ~/.vim/bundle && git clone https://github.com/Shougo/neocomplete.vim.git && cd $workdir

#Install python dependencies
mkdir -p /tmp/python
cd /tmp/python
wget https://www.python.org/ftp/python/3.4.3/Python-3.4.3.tgz
tar xzvf Python-3.4.3.tgz
cd Python-3.4.3
./configure
make
make install

#Install Jedi // Python developers
pip install --user jedi
cd ~/.vim/bundle/ && git clone https://github.com/davidhalter/jedi-vim.git && cd $workdir

