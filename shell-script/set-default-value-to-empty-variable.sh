
# one var with valid value, one without value
# and a third one which does not exist.

echo "clipboard value" | pbcopy

var_ok="value"
var_empty=""

[[ -z "$var_ok" ]] && $var_ok="$(pbpaste)";

[[ -z "$var_empty" ]] && $var_empty="$(pbpaste)";

# will print "value"
echo "var_ok: " $var_ok 

# will print "clipboard value" 
echo "var_empty: " $var_empty

# error?
echo "var_void: " $var_void

# test a non existing variable is ok?
[[ -z "$var_void2" ]] && $var_void2="$(pbpaste)";

echo "var_void2: " $var_void2

