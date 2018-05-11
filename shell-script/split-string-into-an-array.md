# split a string into an array in zsh

# string which can be a param sent to a function or any kind of string
string="foo_teste-xururu asdf"

# what is IFS by the way?
# It is used to perform "field splitting" and "word splitting",
#
# The command `read` split a data stream when gen a caracter that is into IFS
#
# The standard value of IFS is IFS=$' \t\n' (<space>, <tab> and <new line>)
#
# In this case I want to split a string on "<space>", "<underscore>" and "<hifen>",
#   to achive that I changed IFS.
#
# read usage:
# -A  -- first name is taken as an array
# -r  -- raw mode
IFS='_- ' read -r -A array <<< "$string"

# the variable $array now can be iterated
for i in $array
do
    echo $i
done

# EOF
