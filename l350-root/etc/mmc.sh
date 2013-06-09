#!/bin/sh

case "$ACTION" in
	add|"")
	if [ -e /dev/mmcblk1p1 ]
	then
	    echo "mmcblk1" > /var/MMCNAME
	    /bin/umount /mnt/mmc
	    /bin/mount /dev/mmcblk1p1 /mnt/mmc
	elif [ -e /dev/mmcblk1 ]
	then
		echo "mmcblk1" > /var/MMCNAME
		/bin/umount /mnt/mmc
		/bin/mount /dev/mmcblk1 /mnt/mmc
	fi
		
#    echo $MDEV > /var/MMCNAME
#    /bin/umount /mnt/mmc
#    /bin/mount -t vfat -o rw,utf8,noatime /dev/$MDEV /mnt/mmc
	;;
	remove)
    echo "no" > /var/MMCNAME
    /bin/umount /mnt/mmc
	;;
esac
