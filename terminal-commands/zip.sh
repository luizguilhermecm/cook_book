#-------------------------------------------------------------------------------
# ZIP – Cross Platform

# First up is ZIP one of the most commonly used compression techniques used
# across all platforms
# zip folder
zip -r archive_name.zip folder_to_compress


# extract zip file
unzip archive_name.zip

# If you want to make a zip without those invisible Mac resource files such as
# “_MACOSX” or “._Filename” and .ds store files, use the “-X” option in the
# command so:
zip -r -X archive_name.zip folder_to_compress

#-------------------------------------------------------------------------------
# TAR.GZ – Cross Platform
# Second up is TAR, an old favourite on Unix/Linux – you add the GZ for the
# compression – compresses tighter than zip

# To compress
tar -zcvf archive_name.tar.gz folder_to_compress

# To extract
tar -zxvf archive_name.tar.gz

#-------------------------------------------------------------------------------
# TAR.BZ2 – Cross Platform
# A variation on TAR GZ but with better compression than both tar.gz and zip.

# To compress
tar -jcvf archive_name.tar.bz2 folder_to_compress

# To extract
tar -jxvf archive_name.tar.bz2

#-------------------------------------------------------------------------------
# GZ
# Without the tar

# To extract
gunzip archivename.gz

#-------------------------------------------------------------------------------
# DMG – OSX Only

# This one is Mac OSX native only – for a GUI interface use
# /Applications/Utilities/Disk Utility – for command line use:

# To create
hdiutil create -format UDZO -srcfolder folder_to_compress archive_name.dmg

# To mount
hdiutil attach archive_name.dmg

# To view
ls -lah /Volumes/archive_name/

# To Eject
hdiutil eject /Volumes/archive_name/

#-------------------------------------------------------------------------------
# http://coolestguidesontheplanet.com/how-to-compress-and-uncompress-files-and-folders-in-os-x-lion-10-7-using-terminal/
