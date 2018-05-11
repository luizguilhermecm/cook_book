#!/usr/local/bin/zsh

echo -e "pwd\t" $(pwd) 
echo -e "\$0\t" $0
echo -e "\$0:a\t" $0:a # absolute path to script file
echo -e "\$0:h\t" $0:h # same as dirname $0
echo -e "\$0:a:h\t" $0:a:h # absolute path to script file directory
echo -e "dirname \$0\t" `dirname $0`

echo -e "\$0:a:e\t" $0:a # absolute path to script file directory
echo -e "\$0:e\t" $0:e # absolute path to script file directory

# *** long story short ***
# 
# $0         => relative path of script file
# dirname $0 => relative path of script file directory
# pwd        => absolute path from where it was invoked
# 
# ***
# 
# invoked from pwd
# pwd	 /Users/snk
# $0	 ./cookbook/shell-script/script_path_location.sh
# dirname $0	 ./cookbook/shell-script
# 
# invoked from pwd
# pwd		    /Volumes/snk-hdd/Dropbox/home/projects/cookbook/shell-script
# $0		    ./script_path_location.sh
# dirname $0	.
# 
# invoked from pwd
# pwd	         /Users/snk/tmp
# $0	         /Volumes/snk-hdd/Dropbox/home/projects/cookbook/shell-script/script_path_location.sh
# dirname $0	/Volumes/snk-hdd/Dropbox/home/projects/cookbook/shell-script
# 
# invoked from pwd
# pwd	        /Volumes/snk-hdd
# $0	        /Volumes/snk-hdd/Dropbox/home/projects/cookbook/shell-script/script_path_location.sh
# dirname $0	/Volumes/snk-hdd/Dropbox/home/projects/cookbook/shell-script
# 
# invoked using the absolute path of script file
# pwd	 /Volumes/snk-hdd/Dropbox/home/projects/cookbook/shell-script
# $0	 /Volumes/snk-hdd/Dropbox/home/projects/cookbook/shell-script/script_path_location.sh
# dirname $0	 /Volumes/snk-hdd/Dropbox/home/projects/cookbook/shell-script
