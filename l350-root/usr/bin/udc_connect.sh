#!/bin/sh

USB_STATE=`cat /sys/devices/platform/musb_hdrc.0/uh_cable`
if [ $USB_STATE == "usb" ]
then
	/bin/sync
	MMC_STATUS=`cat /proc/jz/mmc`
	MMC_NAME=`cat /var/MMCNAME`

	if [ $MMC_NAME != "no" ] && [ $MMC_STATUS == "INSERT" ]
	then
		umount -f /mnt/memory
#		umount -f /mnt/mmc
		echo /dev/mmcblk0p4 > /sys/devices/platform/musb_hdrc.0/gadget/gadget-lun0/file
#		echo /dev/$MMC_NAME > /sys/devices/platform/musb_hdrc.0/gadget/gadget-lun1/file
	else
		umount -f /mnt/memory
		echo /dev/mmcblk0p4 > /sys/devices/platform/musb_hdrc.0/gadget/gadget-lun0/file

	fi
fi

