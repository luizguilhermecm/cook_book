# Usage: hdiutil <verb> <options>

# <verb> is one of the following:
# help 
# attach 
# detach 
# eject 
# verify 
# create 
# compact 
# convert 
# burn
# info 
# checksum 
# chpass 
# erasekeys 
# unflatten 
# flatten
# imageinfo
# internet-enable
# isencrypted
# makehybrid
# mount
# mountvol
# unmount
# plugins
# resize
# segment
# pmap
# udifderez
# udifrez


## begin : brute force script
#!/bin/bash
for word in $(cat wordlist | grep -v "#")
do
	echo -n $word | hdiutil attach -stdinpass image.dmg
	if [[ $? = 0 ]] 
	then 
		echo "Password found!"
		echo $word
		exit 0
	fi
done

echo "password not found :("
exit 1
## end : brute force script

hdiutil create encrypted.dmg -encryption -size 1g -volname "Encrypted Disk Image" -fs JHFS+

hdiutil create -encryption AES-128 -size 1m -volname "Encrypted Disk Image" -fs JHFS+ image.dmg
hdiutil create -encryption AES-256 -size 1m -volname "Encrypted Disk Image" -fs JHFS+ image.dmg

# no need to especify the extension of file
hdiutil create -encryption AES-256 -size 5m -volname "VOLUME_NAME_AFTER_MOUNT" -fs JHFS+ -type SPARSEBUNDLE FILENAME

hdiutil create -encryption AES-256 -size 5m -volname "cryptocoins_wallets" -fs JHFS+ -type SPARSEBUNDLE cryptocoins_wallets
hdiutil create -encryption AES-256 -size 5m -volname "snk_eyes_only" -fs JHFS+ -type SPARSEBUNDLE 00_snk_eyes_only
