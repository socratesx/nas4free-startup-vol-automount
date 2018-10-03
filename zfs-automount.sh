#!/bin/bash

CHECK=0

while [ $CHECK -eq 0 ]

do
if [ -e /dev/da2.eli ] && [ -e /dev/da3.eli ]; then
        zfs mount -a
        ZFS_MOUNTED_ON=`date`
        echo $ZFS_MOUNTED_ON
        export ZFS_MOUNTED_ON
        CHECK=1
fi

sleep 2
done
