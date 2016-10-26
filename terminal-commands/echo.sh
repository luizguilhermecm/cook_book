

# print numbers 1 to 20 breaking line
echo {1..20} | sed 's/ /\
/g' | pbcopy
