#!/bin/sh

    echo "" > /sys/devices/platform/musb_hdrc.0/gadget/gadget-lun0/file
#    echo "" > /sys/devices/platform/musb_hdrc.0/gadget/gadget-lun1/file
    /bin/mount -t vfat -o rw,utf8 /dev/mmcblk0p4 /mnt/memory

#    MMC_STATUS=`cat /proc/jz/mmc`
#    MMC_NAME=`cat /var/MMCNAME`
#    if [ $MMC_NAME != "no" ] && [ $MMC_STATUS == "INSERT" ] 
#	then
#	/bin/mount -t vfat -o rw,utf8,noatime /dev/$MMC_NAME /mnt/mmc
#    fi
	/bin/sync

