#!/bin/bash
source ./create_empty_dir.sh 

if [ ! -e l350-root/dev/console ]
then
        echo "create console"
	 mknod l350-root/dev/console c 5 1
fi
if [ ! -e l350-root/dev/null ]
then
        echo "create null"
	 mknod l350-root/dev/null c 1 3
fi
if [ ! -e l350-root/dev/tcsm ]
then
        echo "create tcsm"
	 mknod l350-root/dev/tcsm c 238 73
fi
if [[ $# == 1 ]]
then
  if [[ $1 == "root" ]]
  then
    echo "build root"
     genext2fs -d ./l350-root/ -b 92160 rootfs.ext3
     tune2fs -j rootfs.ext3
     tune2fs -i w rootfs.ext3
     e2fsck -fy  rootfs.ext3
  elif [[ $1 == "app" ]]
  then
    echo "build app"
     genext2fs -d ./l350-app/ -b 20480 appfs.ext3
     tune2fs -j appfs.ext3
     tune2fs -i w appfs.ext3
     e2fsck -fy  appfs.ext3
  elif [[ $1 == "cfg" ]]
  then
    echo "build cfg"
     genext2fs -d ./l350-config/ -b 20480 configfs.ext3
     tune2fs -j configfs.ext3
     tune2fs -i w configfs.ext3
     e2fsck -fy  configfs.ext3
  elif [[ $1 == "clean" ]]
  then
    echo "Clean all"
     rm rootfs.ext3
     rm appfs.ext3
     rm configfs.ext3
     rm l350-app/local/yohu_desktop/dmenu
     rm l350-root/dev/console
     rm l350-root/dev/null
     rm l350-root/dev/tcsm
  fi
else
  echo "Creat All"
   genext2fs -d ./l350-root/ -b 92160 rootfs.ext3
   tune2fs -j rootfs.ext3
   tune2fs -i w rootfs.ext3
   e2fsck -fy  rootfs.ext3
   genext2fs -d ./l350-app/ -b 20480 appfs.ext3
   tune2fs -j appfs.ext3
   tune2fs -i w appfs.ext3
   e2fsck -fy  appfs.ext3
   genext2fs -d ./l350-config/ -b 20480 configfs.ext3
   tune2fs -j configfs.ext3
   tune2fs -i w configfs.ext3
   e2fsck -fy  configfs.ext3
fi
exit 0
