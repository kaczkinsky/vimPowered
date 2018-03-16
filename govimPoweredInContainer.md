README.md
---------

**Note: The sudo rights must be given on /var/run/docker.sock for a good execution of this following**

_To install in debian container:_

    docker build -f debian-dockerfile .

_To install in Fedora container:_

    docker build -f fedora-dockerfile

_To install in Tiny Core Linux container:_

    docker build -f tinycore-dockerfile

_To install in Ubuntu container:_

    docker build -f ubuntu-dockerfile

_To install in FreeBSD container:_ 

    docker build -f freebsd-dockerfile

_To install in OpenBSD container:_

    docker build -f openbsd-dockerfile

_To install in MacOSX container:_

    docker build -f osx-dockerfile

_To install in Opensuse container:_

    docker build -f opensuse-dockerfile

_To install in Archlinux container:_

    docker build -f archlinux-dockerfile

_To install in Gentoo container:_

    docker build -f gentoo-dockerfile

_To install in Alpine container (based source image):_

    docker build .


**Note: This auxiliary is not available on Windows, and it's a good thing !**


