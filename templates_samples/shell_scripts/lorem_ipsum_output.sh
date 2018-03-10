#!/usr/local/bin/zsh
# print a number of lines with Lorem Ipsum
# $1 is the number of lines
# limited in 50.


re='^[0-9]+$'

if [[ $# -eq 0 ]] ; then
    x=1;
elif ! [[ $1 =~ $re ]] ; then
   echo "error: Not a number" >&2; 
   exit 1
elif [[ $1 -gt 50 ]] ; then
    x=10;
else
    x=$1
fi;

for ((i=1;i<=$x;i++)) 
do
    echo -e "$(date "+%Y%m%d_%H%M%S") : Lorem ipsum dolor sit amet, "
done
