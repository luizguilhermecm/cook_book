
var="This is a test"
echo "${#myvar}"
echo "-c" ; echo "$myvar" | wc -c
echo "-l" ; echo "$myvar" | wc -l
echo "-m" ; echo "$myvar" | wc -m
echo "-w" ; echo "$myvar" | wc -w
