#!/usr/local/bin/zsh

# awk prints the second column
./dropbox_uploader.sh list home/dotfiles -h | awk '{print $2}'

# awk search for '\[D\]'
./dropbox_uploader.sh list home/dotfiles -h | awk '/\[D\]/'

# awk search for '\[D\]' or '449', a the 'new line' is required
./dropbox_uploader.sh list home/dotfiles -h | awk '/\[D\]/ 
        /449/'

# eval the awk command, eval do not work with 'new line', use ';' instead 
eval "./dropbox_uploader.sh list home/dotfiles -h | awk '/\[D\]/ ; /449/'" 

# there is an alias for "alias ec='eval $(pbpaste)'"
# so, just copy the command to clipboard
./dropbox_uploader.sh list home/dotfiles -h | awk '/\[D\]/ ; /449/'
# and use
ec

./dropbox_uploader.sh list home/dotfiles -h | awk '/\[D\]/' 

./dropbox_uploader.sh list home/dotfiles -h | awk '/\[D\]/' | awk '{print $2}'

./dropbox_uploader.sh list home/dotfiles -h | awk '/\[D\]/ {print $2}'

./dropbox_uploader.sh list home/dotfiles -h | awk '/\[D\]/{++cnt} END {print "Count = ", cnt}'
./dropbox_uploader.sh list home/dotfiles -h | awk '/\[D\]/{++cnt} {print $2} END {print "Count = ", cnt}'
./dropbox_uploader.sh list home/dotfiles -h | awk '/\[D\]/{nb++ ; print $2} END {print "  nb=", nb}'  

# print lines with length greater then 18 caracters
command_output | awk 'length($0) > 18' 


./dropbox_uploader.sh list home/dotfiles -h | awk 'BEGIN {print "header printed only one time"} /\[D\]/{nb++ ; print $2} END {print "footer  nb=", nb}'  

./dropbox_uploader.sh list home/dotfiles -h | awk '$1 ~/\[D\]/ {print $2}'  

#remove duplicate lines
cat sample.txt sample.txt | awk '!($0 in array) { array[$0]; print }' 


#Print all lines from /etc/passwd that has the same uid and gid
awk -F ':' '$3==$4' passwd.txt

cat sample.txt| awk 'BEGIN {FS = " "} {print $1 "_" $2}' 

cat sample.txt sample.txt | awk '!($0 in array) { array[$0]; print }' temp

cat sample.txt| awk 'BEGIN {FS = " "} {print $1 "_" $2}' 

cat sample.txt| awk -F ' ' '$1=="[D]"{print $2} $1=="[F]"{print $3}' 
cat sample.txt| awk -F ' ' '{print $1 "\tNF=" NF "\tNR=" NR}' 

cat sample.txt| awk '$1=="[D]"{print $2} $1=="[F]"{print $3}' 

cat sample.txt| awk -v is_file="[F]" is_dir="[D]" '$1==is_dir{print $2} $1==is_file {print $3}' 

cat sample.txt| awk -v fl="[F]" '{print $1==fl}' 
cat sample.txt| awk -v fl="[F]" '{print $1==fl}' 
    
cat sample.txt| awk 'NF==2{print $2} NF==3{print $3}' 
