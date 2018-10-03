# nas4free-startup-vol-automount
This simple script automounts the ZFS volumes that are created on encrypted disks. 

If the ZFS volumes are defined on encrypted disks, they are not mounted on startup after a reboot of the nas4free server. This is because the disks must be manually attached using the secret encryption passphrase. In my occasion the volumes didn't mount after the manual disk attachment. So, I created this simple script to automate this procedure. The script assumes that there are two encrypted disks on the system (da2.eli & da3.eli), you can modify it according to your needs.

When the encrypted disks are attached, the da2.eli & da3.eli files are created and correspond to these devices. The script is just a simple loop that checks the existence of these two files every 2 seconds. When the script detects them then it issues the zfs mount -a command in order to mount all the ZFS volumes.

If your encryoted disk array containms more disks, just add the respective file name in the if condition. 
