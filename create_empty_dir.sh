#!/bin/bash
if [ ! -d ./l350-root/sys ]
then
        echo "create ./l350-root/sys"
        mkdir ./l350-root/sys
fi

if [ ! -d ./l350-root/root ]
then
        echo "create ./l350-root/root"
        mkdir ./l350-root/root
fi

if [ ! -d ./l350-root/proc ]
then
        echo "create ./l350-root/proc"
        mkdir ./l350-root/proc
fi

if [ ! -d ./l350-root/usr/mtdblock3 ]
then
        echo "create ./l350-root/usr/mtdblock3"
        mkdir ./l350-root/usr/mtdblock3
fi

if [ ! -d ./l350-root/usr/share/midi ]
then
        echo "create ./l350-root/usr/share/midi"
        mkdir ./l350-root/usr/share/midi
fi

if [ ! -d ./l350-root/usr/mtdblock4 ]
then
        echo "create ./l350-root/usr/mtdblock4"
        mkdir ./l350-root/usr/mtdblock4
fi

if [ ! -d ./l350-root/home ]
then
        echo "create ./l350-root/home"
        mkdir ./l350-root/home
fi

if [ ! -d ./l350-root/home/default ]
then
        echo "create ./l350-root/home/default"
        mkdir ./l350-root/home/default
fi

if [ ! -d ./l350-root/mnt/ ]
then
        echo "create ./l350-root/mnt/"
        mkdir ./l350-root/mnt/
fi

if [ ! -d ./l350-root/mnt/memory ]
then
        echo "create ./l350-root/mnt/memory"
        mkdir ./l350-root/mnt/memory
fi

if [ ! -d ./l350-root/mnt/mmc ]
then
        echo "create ./l350-root/mnt/mmc"
        mkdir ./l350-root/mnt/mmc
fi

if [ ! -d ./l350-root/mnt/save ]
then
        echo "create ./l350-root/mnt/save"
        mkdir ./l350-root/mnt/save
fi

if [ ! -d ./l350-root/config ]
then
        echo "create ./l350-root/config"
        mkdir ./l350-root/config
fi

if [ ! -d ./l350-root/etc/network/if-post-down.d ]
then
        echo "create ./l350-root/etc/network/if-post-down.d"
        mkdir ./l350-root/etc/network/if-post-down.d
fi

if [ ! -d ./l350-root/etc/network/if-pre-up.d ]
then
        echo "create ./l350-root/etc/network/if-pre-up.d"
        mkdir ./l350-root/etc/network/if-pre-up.d
fi

if [ ! -d ./l350-root/etc/network/if-up.d ]
then
        echo "create ./l350-root/etc/network/if-up.d"
        mkdir ./l350-root/etc/network/if-up.d
fi

if [ ! -d ./l350-root/etc/network/if-down.d ]
then
        echo "create ./l350-root/etc/network/if-down.d"
        mkdir ./l350-root/etc/network/if-down.d
fi

if [ ! -d ./l350-root/tmp ]
then
        echo "create ./l350-root/tmp"
        mkdir ./l350-root/tmp
fi

if [ ! -d ./l350-root/tmp/wpa_supplicant ]
then
        echo "create ./l350-root/tmp/wpa_supplicant"
        mkdir ./l350-root/tmp/wpa_supplicant
fi

if [ ! -d ./l350-root/dev ]
then
        echo "create ./l350-root/dev"
        mkdir ./l350-root/dev
fi
