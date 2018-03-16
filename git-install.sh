#!/bin/bash

# def global vars
host=$(uname -a) # Test dev params
os=$(cat /etc/os-release)
set -- $host
echo "Detected host os : " $6

# These following lines is provides from https://git-scm.com/download/linux

# GIT INSTALLATION

# For the latest stable version for your release of Debian/Ubuntu
#if [ $6 = "Ubuntu" ] || [4d6e795bbea4 $6 = "Debian" ]
if [ $($os | grep ^ID=debian$) ]
	then apt-get -y install git #TESTS + TODO others
fi
# For Ubuntu, this PPA provides the latest stable upstream Git version
# add-apt-repository ppa:git-core/ppa # apt update; apt install git
# Fedora
#if [ $6 = "Fedora" ]
if [ $($os | grep "fedora") ]
	then yum install -y git # || dnf update && dnf install git curl wget squashfs-tools gcc make vim
fi

#TODO modify this following
# Gentoo
if [ $6 = "[g-G]entoo" ]
	then emerge --ask --verbose dev-vcs/git
fi
# Arch Linux
if [ $6 = "[a-A]rch[l-L]inux" ]
	then pacman -S git 
fi
# openSUSE
if [ $6 = "[o-O]pen(suse|SUSE)" ]
	then zypper install git
fi
# FreeBSD
if [ $6 = "[f-F]ree(BSD|bsd)" ]
	then pkg install git
fi
# OpenBSD
if [ $6 = "[o-O]pen(BSD|bsd)" ]
	then pkg_add git
fi
# Alpine
if [ $6 = "[a-A]lpine" ]
	then apk add git
fi
# Tiny Core Linux
if [ $6 = "Tiny Core" ]
	then tce-load -wi git.tcz wget.tcz squashfs-tools.tcz compiletc.tcz gcc.tcz make.tcz vim.tcz
fi

git_version=$(git --version)
if $git_version
then
	echo "Successful installation of git tools" 
fi      


