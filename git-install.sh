#!/bin/sh

# def global vars
os=$(uname -a)
set -- $os
echo "Detected os : " $6

# These following lines is provides from https://git-scm.com/download/linux

# GIT INSTALL

# For the latest stable version for your release of Debian/Ubuntu
if [ $6 = "Ubuntu" ] || [ $6 = "Debian" ]
	then 
		apt-get update && apt-get -y install git curl wget squashfs-tools gcc make vim #TESTS + TODO others
fi
# For Ubuntu, this PPA provides the latest stable upstream Git version
# add-apt-repository ppa:git-core/ppa # apt update; apt install git

# Fedora
if [ $6 = "Fedora" ]
	then yum install git || dnf install git
fi
# Gentoo
if [ $6 = "Gentoo" ]
	then emerge --ask --verbose dev-vcs/git
fi
# Arch Linux
if [ $6 = "Arch Linux" ]
	then pacman -S git
fi
# openSUSE
if [ $6 = "OpenSUSE" ]
	then zypper install git
fi
# FreeBSD
if [ $6 = "FreeBSD" ]
	then pkg install git
fi
# OpenBSD
if [ $6 = "OpenBSD" ]
	then pkg_add git
fi
# Alpine
if [ $6 = "[a-A]lpine" ]
	then apk add git
fi
# Tiny Core Linux
if [ $6 = "Tiny Core" ]
	then tce-load -wi git.tcz
fi

git_version=$(git --version)
if $git_version
then
	echo "Successful installation"
	echo "Exit program"
fi      


