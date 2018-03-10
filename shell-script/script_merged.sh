#!/bin/sh

# given the param: 
#    "Plugin 'flazz/vim-colorschemes'"
# 
# 1. extract the substring 'vim-colorshemes
#
# 2. create a file at 
#   /Users/snk/.vim/vundle_plugins_snk
#
# 3. write into
#       if exists('g:vundle_installing_plugins')
#         Plugin 'mhinz/vim-startify'
#         finish
#       endif
#       
# 

extract_name () {
    #echo "\t\t|method_| extract_name " 

    #echo "\t\t\t|INFO| extract_name: " "Extracting name of " "$@"

    local ret=$(echo "$@" | sed -E -e 's/^[^\/]+//' -e "s/\/|'//g")
    
    #echo "\t\t\t|INFO| extract_name: ret == $ret"

    echo "$ret"
}


main() {


    #local pvim="/Users/snk/testes/shell-script/add_vundle_plugin/"
    local pvim="/Users/snk/.vim/vundle_plugins_snk/"
    echo "$pvim"
    #echo "|method_+ main"

    #echo "\t|INFO| main: " "invoke extract_name"

    local ename=$(extract_name "$@")


    echo "if exists('g:vundle_installing_plugins')" "\n  " "$@" "\n  finish" "\nendif" > "$pvim$ename.vim" 
    #echo "x $ename"

    #echo "\t|INFO| main: " "local ename == " "$ename"



}

#echo "$0"

main "$@"

#!/bin/bash

function alias-here () {
    if [ $# -eq 1 ]; then
        #local nalias=""
        print "Creating alias named " "$1"
        print "New alias will exec: "
        print "='cd " "$(pwd)" "'"
        A
        print  'alias   "$1" a=\rood../../../../=\'cd "$(pwd)" "'" >> ~/dotfiles/.aliases-cd ;
        source-snk 
    else
        echo "usage: param is necessary to name the alias ";
    fi;
}

function source-snk () {
    source ~/dotfiles/.snk_bash
    printf "[OK] source \n"
    return 1
}

# Create a new directory and enter it
function mkd() {
	mkdir -p "$@" && cd "$_";
}

# Create a new directory and enter it
function mkd() {
	mkdir -p "$@" && cd "$_";
}

# "$0 is an function to generate a random string with lenght equal N.\n";
# "$0 expects one or zero arguments and it will be the lenght of string.\n";
# "If no one parameter is specified, it will use a lenght equal 10.\n";
# Generate a random string with lenght equal N
function rand() {
    if [ $# -eq 0 ]; then
      openssl rand -base64 10;
    else
      openssl rand -base64 "$1";
    fi;
}

# fl stands for "function list"
function fl(){
    cat ./.functions
}

# Find files in the current directory containing the most occurrences of a pattern
# switch -c: turn on display of occurrence counts
# switch -r: reverse sort order (default ascending)
# flag -m COUNT: minimum number of occurrences required to include file in results
# param 1: (required) search pattern (regex allowed, case insensitive)
#
# Results are output in ascending order by occurrence count
matches () {

	local counts=false minmatches=1 patt width=1 reverse=""
	local helpstring="Find files in the current directory containing the most occurrences of a pattern\n\t-c         Include occurrence counts in output\n\t-r         Reverse sort order (default ascending)\n\t-m COUNT   Minimum number of matches required\n\t-h         Display this help screen\n\n	Example:\n\t# search for files containing at least 3 occurrences\n\t# of the word \"jekyll\", display filenames with counts\n\n\t$ matches -c -m 3 jekyll"

	OPTIND=1
	while getopts "crm:h" opt; do
		case $opt in
			c) counts=true ;;
			r) reverse="r" ;;
			m) minmatches=$OPTARG ;;
			h) echo -e $helpstring; return;;
			*) return 1;;
		esac
	done
	shift $((OPTIND-1))

	if [ $# -ne 1 ]; then
		echo -e $helpstring
		return 1
	fi

	patt=$1; shift

	OLDIFS=$IFS
	IFS=$'\n'

	declare -a matches=$(while read -r line; do \
	                grep -Hi -c -E "$patt" "$line"; \
	              done < <(grep -lIi -E "$patt" * 2> /dev/null) \
	              | sort -t: -${reverse}n -k 2)
	width=$(echo -n ${matches[0]##*:}|wc -c|tr -d ' ')

	for mtch in ${matches[@]}; do
		if [ ${mtch##*:} -ge $minmatches ]; then
			if $counts; then
				printf "%${width}d: %s\n" ${mtch##*:} "${mtch%:*}"
			else
				echo "${mtch%:*}"
			fi
		fi
	done

	IFS=$OLDIFS
}
#!/bin/sh

if purge ; then
    echo "Command succeeded"
else
    echo "Command failed"
fi

#!/usr/local/bin/zsh

confirm() {
    # call with a prompt string or use a default
    echo "Are you sure [y/n]?"
    read -r response
    case "$response" in
        [yY][eE][sS]|[yY]) 
            true
            ;;
        *)
            false
            ;;
    esac
}


confirm && pwd
#!/bin/bash
echo $0

function __teste_string() {
    local str="string";

    echo "$str"

    if [ $str == "string" ]; then 
        echo "ok"
    else
        echo "fail"
    fi;


    if [ $str =~ *"tri"* ]; then 
        echo "ok"
    else
        echo "fail"
    fi;


}

__teste_string
#!/bin/sh
echo $0

function __teste_string() {
    local str="string";

    echo "$str"

    if [ $str == "string" ]; then 
        echo "ok"
    else
        echo "fail"
    fi;


    if [ $str =~ *"tri"* ]; then 
        echo "ok"
    else
        echo "fail"
    fi;


}

__teste_string
#!/usr/local/bin/zsh
#!/bin/sh
#!/bin/bash
#
# dirup 
# created at 20170525_232618


echo "dirup.sh at " $(pwd) $0


echo "$1" >> ~/tmp/__moved-files.txt

confirm() {
    # call with a prompt string or use a default
    echo "Are you sure [y/n]?"
    read -r response
    case "$response" in
        [yY][eE][sS]|[yY]) 
            true
            ;;
        *)
            false
            ;;
    esac
}



function __main () {
    if [ $# -eq 1 ]; then

        cd "$1"

    else

        cd "$(pwd)"

    fi;

    echo $(pwd)

    # confirm && find $(pwd) -d 1 -type f \! -name ".*" | while read f; 
    confirm && find "$(pwd)" -d 1 \! -name ".*" | while read f; 
    do
    	cd "$(dirname $f)" ; mv "$f" .. ; echo "$f moved up:" >> ~/tmp/__moved-files.txt
        # echo $f

    done

    echo "done"

    echo "cd $(dirname $(pwd))" | pbcopy

    rmdir "$(pwd)"
    

}


__main $@
#!/bin/bash

# evil-filenames-test: Test out handling "evil" filenames in shell.

# This create directory "evil" with evil filenames inside, and then
# processes them correctly.  Each evil file contains a different number.
# This leaves the directory "evil" behind, so you can use the
# files it creates to test your programs.  The code is written so if your
# system doesn't permit the creation of certain filenames, it'll keep going
# and test what your system DOES allow.

# Parts are bash-specific, because we want to test some bash extensions.
# This shell script requires support for $'...', which is widely supported
# and recently added to POSIX: http://austingroupbugs.net/view.php?id=249
# It uses some non-standard bash extensions, esp. <(...). Also uses "seq".

set -u  # Turn on warning flag
IFS="$(printf '\n\t')"
tab="$(printf '\t')"
newline="$(printf '\nX')"
newline="${newline%X}"

PATH="$PATH:$(pwd)/../encodef/:$(pwd)"

### Create directory "evil/" containing evil filenames ###

rm -fr evil/
mkdir -p evil/

counter=1
make_evil_file () {
  # $1 has an evil filename to create.
  file="$1"
  if printf '%s\n' "$counter" > evil/"${file}"
  then
    printf 'Created #%s "%s"\n' "$counter" "$file"
    counter=$(($counter + 1))
  else
    printf "Failed to create \"$file\"\n" "$file"
  fi
}

on_cygwin=0
backslashes_allowed=1
if [ -f /usr/bin/cygcheck ] ; then
  on_cygwin=1
  backslashes_allowed=0
fi

make_evil_file 'xyz'
make_evil_file '.abc'
# Space character issues:
make_evil_file 'x y z'
make_evil_file 'x  y z'
make_evil_file ' '
make_evil_file '  '
make_evil_file 'xyz '
make_evil_file 'xyz  '
make_evil_file '  xyz  '
make_evil_file '. '
make_evil_file '.. '
make_evil_file '.a bc'
# Leading dashes:
make_evil_file '-'
make_evil_file '--'
make_evil_file '-n'
make_evil_file '--force'
make_evil_file '-n --force'
# Punctuation characters:
make_evil_file '` ! @ # $ % ^ & * ( ) _ - + ~ ='
make_evil_file '; : < > , . ?'
make_evil_file '{} [] | " "'
if [ "$backslashes_allowed" = 1 ] ; then
  make_evil_file 'not-control-\ty' # Looks like tab, but it's not.
  make_evil_file "\\"
  make_evil_file "\\\\"
  make_evil_file '\n' # Not a newline
else
  printf 'Intentionally not making filenames with backslash\n'
fi
make_evil_file 'xy[az]'  # Can trigger bracket expansion
make_evil_file 'x{yz}'  # Can trigger brace expansion
make_evil_file '(xyz)'  # parens are trouble.
make_evil_file "'"
make_evil_file "\""
make_evil_file '*'
make_evil_file '~'
make_evil_file '~root'  # Leading tilde may be expanded
make_evil_file '!!'  # bang can trigger history expansion
make_evil_file '!-1'
# BOM marker in UTF-8 (0xEF, 0xBB, 0xBF), with nothing afterwards:
make_evil_file $'\xef\xbb\xbf'
# BOM marker in UTF-8 with normal name after (consider it distinct):
make_evil_file $'\xef\xbb\xbfxyz'
# Invalid UTF-8:
make_evil_file $'\xf0\xa4BAD' # Character U+24B62 => F0 A4 AD A2, cut it off
make_evil_file $'\xff'
make_evil_file $'\xff\xff\xff\xff'
# Modified UTF-8 permits "C0 80" to represent null, but should that
# be showing up in a filename?  Almost certainly not, but here we test for it:
make_evil_file $'\xc0\x80'
# Control characters and DEL:
make_evil_file $'\001x\001y\001'
make_evil_file $'\e[5;34;42mIn color\e[0;37;40mNot in color'
make_evil_file $'\x7f' # DEL char
make_evil_file $'Q\x7f' # DEL char
make_evil_file $'\rx\ry\r'
make_evil_file 'ZZ'

last_counter_without_newline_tab=$(($counter - 1))

# Newline and tab
make_evil_file $'\nx\ny\n'
make_evil_file $'\nx\ny\r\n'  # ending \r\n => \n on Cygwin.
make_evil_file $'x\ny'
make_evil_file $'\nx\ny\n\n'
make_evil_file $'\nx\ny\n\r'
make_evil_file $'\n'
make_evil_file $'\n\n'
make_evil_file $'x\ty'


last_counter=$(($counter - 1))


### Compute correct answers ###

# Create "correct-results" files.
seq 1 $last_counter > correct-results
seq 1 $last_counter_without_newline_tab > correct-results-no-nl-tab
find evil/ -type f -name '.*' ! -name '.' ! -name '..' \
     -exec cat {} \; | sort -n > correct-hidden-ids

sort correct-hidden-ids > .,x
sort correct-results    > .,y
comm -13 .,x .,y | sort -n > correct-results-unhidden
rm .,x .,y

controlchars="$(printf '*[\001-\037\177]*')"
find evil/ -type f ! -name "$controlchars" -exec cat {} \; | \
  sort -n > correct-without-control


### Process the evil filenames and check that we get correct results ###

printf '\nNow running tests\n\n'
testnum=0
errors=0

start_test () {
  testnum=$(($testnum + 1))
  printf 'TEST #%s: %s\n' "$testnum" "$1"
}

compare () {
  correct_results="../$1"
  actual_results="../actual_dir/results$testnum"
  mkdir -p ../actual_dir
  mv ../results "$actual_results"
  if ! cmp "$correct_results" "$actual_results" ; then
    printf "Errors found in $actual_results, as follows:\n":
    diff -u "$correct_results" "$actual_results"
    errors=$(($errors + 1))
  fi 
}

cygwin_warning () {
  if [ $on_cygwin = 1 ] ; then
    printf 'WARNING: Expected failure, ending \\r\\n mapped to \\n\n'
    errors=$(($errors - 1))
  fi
}

# Move into "evil/" subdirectory to show we can handle initial "-".
cd evil/

start_test 'Correct portable glob use: "for" loop, prefix glob, check for existence'
for file in ./* ; do
  if [ -e "$file" ] ; then
    cat "$file"
  fi
done | sort -n > ../results
compare correct-results-unhidden

start_test 'Correct portable glob use, including hidden files (beginning with ".")'
for file in ./* ./.[!.]* ./..?* ; do
  if [ -e "$file" ] ; then
    cat "$file"
  fi
done | sort -n > ../results
compare correct-results

start_test 'Correct glob use, simpler but requires nonstandard bash extension nullglob'
( shopt -s nullglob
  for file in ./* ; do
    cat "$file"
  done ) | sort -n > ../results
compare correct-results-unhidden

start_test 'Simple find -exec; can be unwieldy if COMMAND is large'
find . -type f -exec cat {} \; | sort -n > ../results
compare correct-results

start_test 'Simple find -exec with +, faster if multiple files are okay for COMMAND'
find . -type f -exec cat {} "+" | sort -n > ../results
compare correct-results

printf 'Skip okay if pathnames cannot contain tabs or newlines - they do!\n'

start_test 'Use find and xargs with \0 separators (nonstandard but common extensions)'
( find . -type f -print0 | xargs -0 cat ) | sort -n > ../results
compare correct-results

start_test 'Head-busting, but it works.'
find . -type f -exec sh -c '
 for file do
    cat "$file"
 done' sh {} + | sort -n > ../results
compare correct-results

# Skip "okay if cannot contain tabs|newlines"

start_test 'Skip pathnames with embedded control chars, including newline and tab'
IFS="$(printf '\n\t')"
controlchars="$(printf '*[\001-\037\177]*')"
(
  set -f  # Needed for filenames with *, etc.
  for file in $(find . -type f ! -name "$controlchars") ; do
    cat "$file"
  done ) | sort -n > ../results
compare correct-without-control


start_test 'find... while loop, requires find and shell extensions'
cygwin_warning
# variables might not stay set once the loop ends:
(
  # FAILS: find . -type f -print0 | while read -d "" file ; do
  # FAILS: find . -type f -print0 | while read -r -d "" file ; do
  # WORKS?: find . -type f -print0 | while IFS="" read -d "" file ; do
  find . -type f -print0 | while IFS="" read -r -d "" file ; do
    cat "$file"
  done ) | sort -n > ../results
compare correct-results


start_test 'find... while loop, nonstandard process redir, read, find -print0'
cygwin_warning
while IFS="" read -r -d "" file <&4 ; do
   cat "$file"
done 4< <(find . -type f -print0) | sort -n > ../results
compare correct-results


start_test 'find... while loop, named pipe version'
cygwin_warning
mkfifo mypipe
find . -type f -print0 > mypipe &
while IFS="" read -r -d "" file <&4 ; do
  cat "$file"
done 4< mypipe | sort -n > ../results
compare correct-results

# Only use encodef if we have it.  The || is to deal with Cygwin weirdness;
# Cygwin auto-execs "file.exe" as file, but "which" won't find it.
if which encodef || which encodef.exe ; then
  start_test 'Use the author'\''s encodef program.'
  # This version is portable across POSIX; in practice
  # you can often use "-print0" instead of "-exec printf '%s\0' {} \;"
  for encoded_pathname in $(find . -type f -exec printf '%s\0' {} \; | \
                            encodef ) ; do
    file="$(encodef -d -Y -- "$encoded_pathname")" ; file="${file%Y}"
    cat "$file"
  done | sort -n > ../results
  compare correct-results
fi

start_test 'Make filename list in variable (omit tab|newline names)'
# Put tab-separated list of files in $filelist
filelist=""
newline_tab_pattern="$(printf '*[\n\t]*')"
# Requires nonstandard extensions to find and to shell (bash works);
# we do this so that $filelist will exist when the loop ends.
while IFS="" read -r -d "" file <&4 ; do
  if [ -z "$filelist" ] ; then
    filelist="${file}"
  else
    filelist="${filelist}${tab}${file}"
  fi
done 4< <(find . -type f ! -name "$newline_tab_pattern" -print0)
printf '\n'
# Execute using $filelist; we must "set -f" to do this.
oldSetOptions=$(set +o)             # Backup option settings
set -f
cat $filelist | sort -n > ../results
eval "$oldSetOptions" 2> /dev/null  # Restore option settings
compare correct-results-no-nl-tab


if [ $errors = 0 ] ; then
  printf 'No errors found. Done.\n'
  exit 0
else
  printf 'Errors found.\n'
  exit 1
fi

#!/bin/bash

# evil-filenames-test: Test out handling "evil" filenames in shell.

# This create directory "evil" with evil filenames inside, and then
# processes them correctly.  Each evil file contains a different number.
# This leaves the directory "evil" behind, so you can use the
# files it creates to test your programs.  The code is written so if your
# system doesn't permit the creation of certain filenames, it'll keep going
# and test what your system DOES allow.

# Parts are bash-specific, because we want to test some bash extensions.
# This shell script requires support for $'...', which is widely supported
# and recently added to POSIX: http://austingroupbugs.net/view.php?id=249
# It uses some non-standard bash extensions, esp. <(...). Also uses "seq".

set -u  # Turn on warning flag
IFS="$(printf '\n\t')"
tab="$(printf '\t')"
newline="$(printf '\nX')"
newline="${newline%X}"

PATH="$PATH:$(pwd)/../encodef/:$(pwd)"

### Create directory "evil/" containing evil filenames ###

rm -fr evil/
mkdir -p evil/

counter=1
make_evil_file () {
  # $1 has an evil filename to create.
  file="$1"
  if printf '%s\n' "$counter" > evil/"${file}"
  then
    printf 'Created #%s "%s"\n' "$counter" "$file"
    counter=$(($counter + 1))
  else
    printf "Failed to create \"$file\"\n" "$file"
  fi
}

on_cygwin=0
backslashes_allowed=1
if [ -f /usr/bin/cygcheck ] ; then
  on_cygwin=1
  backslashes_allowed=0
fi

make_evil_file 'xyz'
make_evil_file '.abc'
# Space character issues:
make_evil_file 'x y z'
make_evil_file 'x  y z'
make_evil_file ' '
make_evil_file '  '
make_evil_file 'xyz '
make_evil_file 'xyz  '
make_evil_file '  xyz  '
make_evil_file '. '
make_evil_file '.. '
make_evil_file '.a bc'
# Leading dashes:
make_evil_file '-'
make_evil_file '--'
make_evil_file '-n'
make_evil_file '--force'
make_evil_file '-n --force'
# Punctuation characters:
make_evil_file '` ! @ # $ % ^ & * ( ) _ - + ~ ='
make_evil_file '; : < > , . ?'
make_evil_file '{} [] | " "'
if [ "$backslashes_allowed" = 1 ] ; then
  make_evil_file 'not-control-\ty' # Looks like tab, but it's not.
  make_evil_file "\\"
  make_evil_file "\\\\"
  make_evil_file '\n' # Not a newline
else
  printf 'Intentionally not making filenames with backslash\n'
fi
make_evil_file 'xy[az]'  # Can trigger bracket expansion
make_evil_file 'x{yz}'  # Can trigger brace expansion
make_evil_file '(xyz)'  # parens are trouble.
make_evil_file "'"
make_evil_file "\""
make_evil_file '*'
make_evil_file '~'
make_evil_file '~root'  # Leading tilde may be expanded
make_evil_file '!!'  # bang can trigger history expansion
make_evil_file '!-1'
# BOM marker in UTF-8 (0xEF, 0xBB, 0xBF), with nothing afterwards:
make_evil_file $'\xef\xbb\xbf'
# BOM marker in UTF-8 with normal name after (consider it distinct):
make_evil_file $'\xef\xbb\xbfxyz'
# Invalid UTF-8:
make_evil_file $'\xf0\xa4BAD' # Character U+24B62 => F0 A4 AD A2, cut it off
make_evil_file $'\xff'
make_evil_file $'\xff\xff\xff\xff'
# Modified UTF-8 permits "C0 80" to represent null, but should that
# be showing up in a filename?  Almost certainly not, but here we test for it:
make_evil_file $'\xc0\x80'
# Control characters and DEL:
make_evil_file $'\001x\001y\001'
make_evil_file $'\e[5;34;42mIn color\e[0;37;40mNot in color'
make_evil_file $'\x7f' # DEL char
make_evil_file $'Q\x7f' # DEL char
make_evil_file $'\rx\ry\r'
make_evil_file 'ZZ'

last_counter_without_newline_tab=$(($counter - 1))

# Newline and tab
make_evil_file $'\nx\ny\n'
make_evil_file $'\nx\ny\r\n'  # ending \r\n => \n on Cygwin.
make_evil_file $'x\ny'
make_evil_file $'\nx\ny\n\n'
make_evil_file $'\nx\ny\n\r'
make_evil_file $'\n'
make_evil_file $'\n\n'
make_evil_file $'x\ty'


last_counter=$(($counter - 1))


### Compute correct answers ###

# Create "correct-results" files.
seq 1 $last_counter > correct-results
seq 1 $last_counter_without_newline_tab > correct-results-no-nl-tab
find evil/ -type f -name '.*' ! -name '.' ! -name '..' \
     -exec cat {} \; | sort -n > correct-hidden-ids

sort correct-hidden-ids > .,x
sort correct-results    > .,y
comm -13 .,x .,y | sort -n > correct-results-unhidden
rm .,x .,y

controlchars="$(printf '*[\001-\037\177]*')"
find evil/ -type f ! -name "$controlchars" -exec cat {} \; | \
  sort -n > correct-without-control


### Process the evil filenames and check that we get correct results ###

printf '\nNow running tests\n\n'
testnum=0
errors=0

start_test () {
  testnum=$(($testnum + 1))
  printf 'TEST #%s: %s\n' "$testnum" "$1"
}

compare () {
  correct_results="../$1"
  actual_results="../actual_dir/results$testnum"
  mkdir -p ../actual_dir
  mv ../results "$actual_results"
  if ! cmp "$correct_results" "$actual_results" ; then
    printf "Errors found in $actual_results, as follows:\n":
    diff -u "$correct_results" "$actual_results"
    errors=$(($errors + 1))
  fi 
}

cygwin_warning () {
  if [ $on_cygwin = 1 ] ; then
    printf 'WARNING: Expected failure, ending \\r\\n mapped to \\n\n'
    errors=$(($errors - 1))
  fi
}

# Move into "evil/" subdirectory to show we can handle initial "-".
cd evil/

start_test 'Correct portable glob use: "for" loop, prefix glob, check for existence'
for file in ./* ; do
  if [ -e "$file" ] ; then
    cat "$file"
  fi
done | sort -n > ../results
compare correct-results-unhidden

start_test 'Correct portable glob use, including hidden files (beginning with ".")'
for file in ./* ./.[!.]* ./..?* ; do
  if [ -e "$file" ] ; then
    cat "$file"
  fi
done | sort -n > ../results
compare correct-results

start_test 'Correct glob use, simpler but requires nonstandard bash extension nullglob'
( shopt -s nullglob
  for file in ./* ; do
    cat "$file"
  done ) | sort -n > ../results
compare correct-results-unhidden

start_test 'Simple find -exec; can be unwieldy if COMMAND is large'
find . -type f -exec cat {} \; | sort -n > ../results
compare correct-results

start_test 'Simple find -exec with +, faster if multiple files are okay for COMMAND'
find . -type f -exec cat {} "+" | sort -n > ../results
compare correct-results

printf 'Skip okay if pathnames cannot contain tabs or newlines - they do!\n'

start_test 'Use find and xargs with \0 separators (nonstandard but common extensions)'
( find . -type f -print0 | xargs -0 cat ) | sort -n > ../results
compare correct-results

start_test 'Head-busting, but it works.'
find . -type f -exec sh -c '
 for file do
    cat "$file"
 done' sh {} + | sort -n > ../results
compare correct-results

# Skip "okay if cannot contain tabs|newlines"

start_test 'Skip pathnames with embedded control chars, including newline and tab'
IFS="$(printf '\n\t')"
controlchars="$(printf '*[\001-\037\177]*')"
(
  set -f  # Needed for filenames with *, etc.
  for file in $(find . -type f ! -name "$controlchars") ; do
    cat "$file"
  done ) | sort -n > ../results
compare correct-without-control


start_test 'find... while loop, requires find and shell extensions'
cygwin_warning
# variables might not stay set once the loop ends:
(
  # FAILS: find . -type f -print0 | while read -d "" file ; do
  # FAILS: find . -type f -print0 | while read -r -d "" file ; do
  # WORKS?: find . -type f -print0 | while IFS="" read -d "" file ; do
  find . -type f -print0 | while IFS="" read -r -d "" file ; do
    cat "$file"
  done ) | sort -n > ../results
compare correct-results


start_test 'find... while loop, nonstandard process redir, read, find -print0'
cygwin_warning
while IFS="" read -r -d "" file <&4 ; do
   cat "$file"
done 4< <(find . -type f -print0) | sort -n > ../results
compare correct-results


start_test 'find... while loop, named pipe version'
cygwin_warning
mkfifo mypipe
find . -type f -print0 > mypipe &
while IFS="" read -r -d "" file <&4 ; do
  cat "$file"
done 4< mypipe | sort -n > ../results
compare correct-results

# Only use encodef if we have it.  The || is to deal with Cygwin weirdness;
# Cygwin auto-execs "file.exe" as file, but "which" won't find it.
if which encodef || which encodef.exe ; then
  start_test 'Use the author'\''s encodef program.'
  # This version is portable across POSIX; in practice
  # you can often use "-print0" instead of "-exec printf '%s\0' {} \;"
  for encoded_pathname in $(find . -type f -exec printf '%s\0' {} \; | \
                            encodef ) ; do
    file="$(encodef -d -Y -- "$encoded_pathname")" ; file="${file%Y}"
    cat "$file"
  done | sort -n > ../results
  compare correct-results
fi

start_test 'Make filename list in variable (omit tab|newline names)'
# Put tab-separated list of files in $filelist
filelist=""
newline_tab_pattern="$(printf '*[\n\t]*')"
# Requires nonstandard extensions to find and to shell (bash works);
# we do this so that $filelist will exist when the loop ends.
while IFS="" read -r -d "" file <&4 ; do
  if [ -z "$filelist" ] ; then
    filelist="${file}"
  else
    filelist="${filelist}${tab}${file}"
  fi
done 4< <(find . -type f ! -name "$newline_tab_pattern" -print0)
printf '\n'
# Execute using $filelist; we must "set -f" to do this.
oldSetOptions=$(set +o)             # Backup option settings
set -f
cat $filelist | sort -n > ../results
eval "$oldSetOptions" 2> /dev/null  # Restore option settings
compare correct-results-no-nl-tab


if [ $errors = 0 ] ; then
  printf 'No errors found. Done.\n'
  exit 0
else
  printf 'Errors found.\n'
  exit 1
fi

#!/usr/local/bin/zsh

# evil-filenames-test: Test out handling "evil" filenames in shell.

# This create directory "evil" with evil filenames inside, and then
# processes them correctly.  Each evil file contains a different number.
# This leaves the directory "evil" behind, so you can use the
# files it creates to test your programs.  The code is written so if your
# system doesn't permit the creation of certain filenames, it'll keep going
# and test what your system DOES allow.

# Parts are bash-specific, because we want to test some bash extensions.
# This shell script requires support for $'...', which is widely supported
# and recently added to POSIX: http://austingroupbugs.net/view.php?id=249
# It uses some non-standard bash extensions, esp. <(...). Also uses "seq".

set -u  # Turn on warning flag
IFS="$(printf '\n\t')"
tab="$(printf '\t')"
newline="$(printf '\nX')"
newline="${newline%X}"

PATH="$PATH:$(pwd)/../encodef/:$(pwd)"

### Create directory "evil/" containing evil filenames ###

rm -fr evil/
mkdir -p evil/

counter=1
make_evil_file () {
  # $1 has an evil filename to create.
  file="$1"
  if printf '%s\n' "$counter" > evil/"${file}"
  then
    printf 'Created #%s "%s"\n' "$counter" "$file"
    counter=$(($counter + 1))
  else
    printf "Failed to create \"$file\"\n" "$file"
  fi
}

on_cygwin=0
backslashes_allowed=1
if [ -f /usr/bin/cygcheck ] ; then
  on_cygwin=1
  backslashes_allowed=0
fi

make_evil_file 'xyz'
make_evil_file '.abc'
# Space character issues:
make_evil_file 'x y z'
make_evil_file 'x  y z'
make_evil_file ' '
make_evil_file '  '
make_evil_file 'xyz '
make_evil_file 'xyz  '
make_evil_file '  xyz  '
make_evil_file '. '
make_evil_file '.. '
make_evil_file '.a bc'
# Leading dashes:
make_evil_file '-'
make_evil_file '--'
make_evil_file '-n'
make_evil_file '--force'
make_evil_file '-n --force'
# Punctuation characters:
make_evil_file '` ! @ # $ % ^ & * ( ) _ - + ~ ='
make_evil_file '; : < > , . ?'
make_evil_file '{} [] | " "'
if [ "$backslashes_allowed" = 1 ] ; then
  make_evil_file 'not-control-\ty' # Looks like tab, but it's not.
  make_evil_file "\\"
  make_evil_file "\\\\"
  make_evil_file '\n' # Not a newline
else
  printf 'Intentionally not making filenames with backslash\n'
fi
make_evil_file 'xy[az]'  # Can trigger bracket expansion
make_evil_file 'x{yz}'  # Can trigger brace expansion
make_evil_file '(xyz)'  # parens are trouble.
make_evil_file "'"
make_evil_file "\""
make_evil_file '*'
make_evil_file '~'
make_evil_file '~root'  # Leading tilde may be expanded
make_evil_file '!!'  # bang can trigger history expansion
make_evil_file '!-1'
# BOM marker in UTF-8 (0xEF, 0xBB, 0xBF), with nothing afterwards:
make_evil_file $'\xef\xbb\xbf'
# BOM marker in UTF-8 with normal name after (consider it distinct):
make_evil_file $'\xef\xbb\xbfxyz'
# Invalid UTF-8:
make_evil_file $'\xf0\xa4BAD' # Character U+24B62 => F0 A4 AD A2, cut it off
make_evil_file $'\xff'
make_evil_file $'\xff\xff\xff\xff'
# Modified UTF-8 permits "C0 80" to represent null, but should that
# be showing up in a filename?  Almost certainly not, but here we test for it:
make_evil_file $'\xc0\x80'
# Control characters and DEL:
make_evil_file $'\001x\001y\001'
make_evil_file $'\e[5;34;42mIn color\e[0;37;40mNot in color'
make_evil_file $'\x7f' # DEL char
make_evil_file $'Q\x7f' # DEL char
make_evil_file $'\rx\ry\r'
make_evil_file 'ZZ'

last_counter_without_newline_tab=$(($counter - 1))

# Newline and tab
make_evil_file $'\nx\ny\n'
make_evil_file $'\nx\ny\r\n'  # ending \r\n => \n on Cygwin.
make_evil_file $'x\ny'
make_evil_file $'\nx\ny\n\n'
make_evil_file $'\nx\ny\n\r'
make_evil_file $'\n'
make_evil_file $'\n\n'
make_evil_file $'x\ty'


last_counter=$(($counter - 1))


### Compute correct answers ###

# Create "correct-results" files.
seq 1 $last_counter > correct-results
seq 1 $last_counter_without_newline_tab > correct-results-no-nl-tab
find evil/ -type f -name '.*' ! -name '.' ! -name '..' \
     -exec cat {} \; | sort -n > correct-hidden-ids

sort correct-hidden-ids > .,x
sort correct-results    > .,y
comm -13 .,x .,y | sort -n > correct-results-unhidden
rm .,x .,y

controlchars="$(printf '*[\001-\037\177]*')"
find evil/ -type f ! -name "$controlchars" -exec cat {} \; | \
  sort -n > correct-without-control


### Process the evil filenames and check that we get correct results ###

printf '\nNow running tests\n\n'
testnum=0
errors=0

start_test () {
  testnum=$(($testnum + 1))
  printf 'TEST #%s: %s\n' "$testnum" "$1"
}

compare () {
  correct_results="../$1"
  actual_results="../actual_dir/results$testnum"
  mkdir -p ../actual_dir
  mv ../results "$actual_results"
  if ! cmp "$correct_results" "$actual_results" ; then
    printf "Errors found in $actual_results, as follows:\n":
    diff -u "$correct_results" "$actual_results"
    errors=$(($errors + 1))
  fi 
}

cygwin_warning () {
  if [ $on_cygwin = 1 ] ; then
    printf 'WARNING: Expected failure, ending \\r\\n mapped to \\n\n'
    errors=$(($errors - 1))
  fi
}

# Move into "evil/" subdirectory to show we can handle initial "-".
cd evil/

start_test 'Correct portable glob use: "for" loop, prefix glob, check for existence'
for file in ./* ; do
  if [ -e "$file" ] ; then
    cat "$file"
  fi
done | sort -n > ../results
compare correct-results-unhidden

start_test 'Correct portable glob use, including hidden files (beginning with ".")'
for file in ./* ./.[!.]* ./..?* ; do
  if [ -e "$file" ] ; then
    cat "$file"
  fi
done | sort -n > ../results
compare correct-results

start_test 'Correct glob use, simpler but requires nonstandard bash extension nullglob'
( shopt -s nullglob
  for file in ./* ; do
    cat "$file"
  done ) | sort -n > ../results
compare correct-results-unhidden

start_test 'Simple find -exec; can be unwieldy if COMMAND is large'
find . -type f -exec cat {} \; | sort -n > ../results
compare correct-results

start_test 'Simple find -exec with +, faster if multiple files are okay for COMMAND'
find . -type f -exec cat {} "+" | sort -n > ../results
compare correct-results

printf 'Skip okay if pathnames cannot contain tabs or newlines - they do!\n'

start_test 'Use find and xargs with \0 separators (nonstandard but common extensions)'
( find . -type f -print0 | xargs -0 cat ) | sort -n > ../results
compare correct-results

start_test 'Head-busting, but it works.'
find . -type f -exec sh -c '
 for file do
    cat "$file"
 done' sh {} + | sort -n > ../results
compare correct-results

# Skip "okay if cannot contain tabs|newlines"

start_test 'Skip pathnames with embedded control chars, including newline and tab'
IFS="$(printf '\n\t')"
controlchars="$(printf '*[\001-\037\177]*')"
(
  set -f  # Needed for filenames with *, etc.
  for file in $(find . -type f ! -name "$controlchars") ; do
    cat "$file"
  done ) | sort -n > ../results
compare correct-without-control


start_test 'find... while loop, requires find and shell extensions'
cygwin_warning
# variables might not stay set once the loop ends:
(
  # FAILS: find . -type f -print0 | while read -d "" file ; do
  # FAILS: find . -type f -print0 | while read -r -d "" file ; do
  # WORKS?: find . -type f -print0 | while IFS="" read -d "" file ; do
  find . -type f -print0 | while IFS="" read -r -d "" file ; do
    cat "$file"
  done ) | sort -n > ../results
compare correct-results


start_test 'find... while loop, nonstandard process redir, read, find -print0'
cygwin_warning
while IFS="" read -r -d "" file <&4 ; do
   cat "$file"
done 4< <(find . -type f -print0) | sort -n > ../results
compare correct-results


start_test 'find... while loop, named pipe version'
cygwin_warning
mkfifo mypipe
find . -type f -print0 > mypipe &
while IFS="" read -r -d "" file <&4 ; do
  cat "$file"
done 4< mypipe | sort -n > ../results
compare correct-results

# Only use encodef if we have it.  The || is to deal with Cygwin weirdness;
# Cygwin auto-execs "file.exe" as file, but "which" won't find it.
if which encodef || which encodef.exe ; then
  start_test 'Use the author'\''s encodef program.'
  # This version is portable across POSIX; in practice
  # you can often use "-print0" instead of "-exec printf '%s\0' {} \;"
  for encoded_pathname in $(find . -type f -exec printf '%s\0' {} \; | \
                            encodef ) ; do
    file="$(encodef -d -Y -- "$encoded_pathname")" ; file="${file%Y}"
    cat "$file"
  done | sort -n > ../results
  compare correct-results
fi

start_test 'Make filename list in variable (omit tab|newline names)'
# Put tab-separated list of files in $filelist
filelist=""
newline_tab_pattern="$(printf '*[\n\t]*')"
# Requires nonstandard extensions to find and to shell (bash works);
# we do this so that $filelist will exist when the loop ends.
while IFS="" read -r -d "" file <&4 ; do
  if [ -z "$filelist" ] ; then
    filelist="${file}"
  else
    filelist="${filelist}${tab}${file}"
  fi
done 4< <(find . -type f ! -name "$newline_tab_pattern" -print0)
printf '\n'
# Execute using $filelist; we must "set -f" to do this.
oldSetOptions=$(set +o)             # Backup option settings
set -f
cat $filelist | sort -n > ../results
eval "$oldSetOptions" 2> /dev/null  # Restore option settings
compare correct-results-no-nl-tab


if [ $errors = 0 ] ; then
  printf 'No errors found. Done.\n'
  exit 0
else
  printf 'Errors found.\n'
  exit 1
fi

#/bin/sh


function vswget () {

    local static=" wget --header=\"User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_0) AppleWebKit/600.1.17 (KHTML, like Gecko) Version/8.0 Safari/600.1.17\" ";

    local target="\"http://bikompkf.ru/page/1/?s=molly+jane&order=asc\"  -O page_6_TAG.html ";

    echo "$static";

    echo "$target";

    $("$static" "$target")
}

wget -h

vswget "$@"
nb=0
for FILE_NAME in *.srt;
do
    nb=$((nb+1))
    mv "${FILE_NAME}" "$1 $nb".srt
done
#!/bin/bash

function gui_password {
    if [[ -z $1 ]]; then
        gui_prompt="Password:"
    else
        gui_prompt="$1"
    fi
    PW=$(osascript <<EOF
    tell application "System Events"
        activate
        text returned of (display dialog "${gui_prompt}" default answer "" with hidden answer)
    end tell
EOF
    )

    echo -n "${PW}"
}

# gui_password $@


selected() {
    osascript <<EOT
        tell application "Finder"
            set theFiles to selection
            set theList to ""
            repeat with aFile in theFiles
                set theList to theList & POSIX path of (aFile as alias) & "\n"
            end repeat
            theList
        end tell
EOT
}

# selected $@


function column_view {
    osascript -e 'set cwd to do shell script "pwd"'\
      -e 'tell application "Finder"'\
      -e "if (${1-1} <= (count Finder windows)) then"\
      -e "set the target of window ${1-1} to (POSIX file cwd) as string"\
      -e "set the current view of the front Finder window to column view"\
      -e 'else' -e "open (POSIX file cwd) as string"\
      -e "set the current view of the front Finder window to column view"\
      -e 'end if' -e 'end tell';
}

# column_view  $@
FOO=1

export BAR=2

echo "$FOO"

echo "$BAR"
#!/bin/bash

# google drive list
function gdls-original() {
    echo "[INFO] folder_id: $1" 

    gdrive list \
        -m 1000 \
        --absolute \
        --no-header \
        --order "name" \
        --name-width 0  \
        --query "trashed = false and '$1' in parents"  
}

function gdls() {
    echo "[INFO] folder_id: $1" 

    gdrive list \
        -m 1000 \
        --no-header \
        --order "name" \
        --name-width 0  \
        --query "trashed = false and '$1' in parents" \
   | grep dir \
   | sed -E -e 's/ {2,}/_/' -e 's/ {2,}.*//g' -e 's/ /_/g' \
   | sed -E -e 's/(^[A-Za-z0-9]+)_(.*)/\2_gid=\1/g' -e 's/^/mkdir "/g' -e 's/$/";/g' 
}


#| sed -E -e 's/ {2,}/=#=/g' -e 's/ /_/g' \
#➜  google-drive-list-mkdir cat out| sed -E -e 's/^[A-Za-z0-9]+//g' -e 's/ {2,}//' -e 's/ {2,}.*//g'

# gdls 0B3zid4NhlDYvWlZKOEtUY3lQYTg # geek

# return the folder name 
#| sed -E -e 's/^[A-Za-z0-9]+//g' -e 's/ {2,}//' -e 's/ {2,}.*//g' -e 's/ /_/g' \
gdls 0B3zid4NhlDYvMmZGNGZIQi1qVW8
#!/usr/local/bin/zsh

new_gitignore() {
    local gi="*/*\n"

    echo "$gi" >> .gitignore
}

function new_makefile () {
    local mf="# makefile #\n"
    mf+="FILE=$f\n"
    mf+="ARG1=arg1_at_makefile\n"
    mf+="ARG2=\n"
    mf+="ARG3=\n"
    mf+="\n"
    mf+="main: \n"
    mf+="	./\$(FILE) \$(ARG1) \$(ARG2) \$(ARG3) \n"

    echo -e "$mf" >> makefile

    echo -e "Invoking makefile with make\n\n"

    make
}

function new_shell_file () {
        mkdir "$1"
        cd $1
        f="$1.sh"
        touch "$f"
        echo "#!/usr/local/bin/zsh" >> "$f";
        echo "#!/bin/sh" >>  "$f";

        echo "#!/bin/bash" >> "$f";
 
        echo "#" >>  "$f";

        echo "# $1 " >>  "$f";

        echo "# created at" $(date "+%Y%m%d_%H%M%S")  >>  "$f";

        echo -e "\n" >>  "$f";

        echo -e "echo \"$f at \" \$(pwd) \$0" >>  "$f";

        echo -e "\n" >>  "$f";

        echo -e "echo \$1" >>  "$f";

        chmod +x "$f"

        echo -e "\nInvoking the template file after chmod it.\n"

        ./"$f"
}


function new_template () {
    if [ $# -eq 1 ]; then

        new_shell_file $@
        new_makefile $@

        new_gitignore $@

        git init
        git add .
        git commit -m "init"



    else
        echo "a name is required to create a new template"

        exit
        # number of params == 0
    fi;
}

new_template $@


function pushover() {
  # pushover
  # ------------------------------------------------------
  # Sends notifications view Pushover
  # Requires a file named 'pushover.cfg' be placed in '../etc/'
  #
  # Usage: pushover "Title Goes Here" "Message Goes Here"
  #
  # Credit: http://ryonsherman.blogspot.com/2012/10/shell-script-to-send-pushover.html
  # ------------------------------------------------------

  # Check for config file containing API Keys
  if [ ! -f "${SOURCEPATH}/../etc/pushover.cfg" ]; then
   error "Please locate the pushover.cfg to send notifications to Pushover."
  else
    # Grab variables from the config file
    source "${SOURCEPATH}/../etc/pushover.cfg"

    # Send to Pushover
    PUSHOVERURL="https://api.pushover.net/1/messages.json"
    API_KEY="${PUSHOVER_API_KEY}"
    USER_KEY="${PUSHOVER_USER_KEY}"
    DEVICE=""
    TITLE="${1}"
    MESSAGE="${2}"
    curl \
    -F "token=${API_KEY}" \
    -F "user=${USER_KEY}" \
    -F "device=${DEVICE}" \
    -F "title=${TITLE}" \
    -F "message=${MESSAGE}" \
    "${PUSHOVERURL}" > /dev/null 2>&1
  fi
}

pushover $@
echo "$@"
if [ -n "$1" ]; then
    echo "not empty"
else
    echo "empty"
fi
echo "$0"
#!/bin/bash

arg1=$1

# [[ -z "$query" ]] && query="$(pbpaste)";

[[ -z "$arg1" ]] && arg1="default_value";

echo -e "$arg1"
echo "$@"
if [ -n "$1" ]; then
    echo "not empty"
else
    echo "empty"
fi
echo "$0"
#!/bin/sh

echo $(date '+%Y-%m-%d %H:%M:%S')
sleep 5
echo $(date '+%Y-%m-%d %H:%M:%S')
#/bin/bash
divider===============================
divider=$divider$divider

header="\n %-10s %8s %10s %11s\n"
format=" %-10s %08d %10s %11.2f\n"

echo $divider

width=80
printf "%$width.${width}s\n" "$divider"

printf "$header" "ITEM NAME" "ITEM ID" "COLOR" "PRICE"

printf "%$width.${width}s\n" "$divider"

printf "$format" \
Triangle 13  red 20 \
Oval 204449 "dark blue" 65.656 \
Square 3145 orange .7
#!/usr/local/bin/zsh

# GOAL: given a directory "/Users/snk/path/parent"
#   1: rename each file preppending the "directory name" 

# - At a directory
#   | 
#   + - get the directory name
#   |  \
#   |   +- dirname 
#   |   |  * dname=`pwd | sed -E -e 's/.*\///g'`
#   |   |
#   |
#   + - get the new name of the file
#   |
#   |
#   |
#   + - rename with new name
#   |
#

echo "$0"

confirm() {
    # call with a prompt string or use a default
    echo "Are you sure [y/n]?"
    read -r response
    case "$response" in
        [yY][eE][sS]|[yY]) 
            true
            ;;
        *)
            false
            ;;
    esac
}

echo -e "BEGIN\n"

cd "$1"

dname=`pwd | sed -E -e 's/.*\///g'`

echo -e "pwd=\t$(pwd)"
echo -e "dname=\t$dname"

echo -e "\n"
#for f in ./*.* 
#do
#    echo "$f";
#done


# find files at directory
#find . -type f 
find . -d 1 -type f \! -name ".*" | while read file; 
do
    # echo -e "file=\t$file"

    fname=`basename "$file"`
    new="./""$dname"_"$fname"

    # echo -e "\tfname=\t$fname"
    echo -e "\tnew=\t$new"

done


confirm && find . -d 1 -type f \! -name ".*" | while read file; 
do
    fname=`basename "$file"`
    new="./""$dname"_"$fname"

    mv "$file" "$new"
    
done


#!/usr/local/bin/zsh
#!/bin/sh
#!/bin/bash
#
# rename-removing-non-letters-at-begin 
# created at 20170619_233945



# get dir of script
SHDIR=$(dirname $0)


#!/usr/local/bin/zsh

confirm() {
    # call with a prompt string or use a default
    echo "Are you sure [y/n]?"
    read -r response
    case "$response" in
        [yY][eE][sS]|[yY]) 
            true
            ;;
        *)
            false
            ;;
    esac
}



echo "rename-removing-non-letters-at-begin.sh at " $SHDIR

echo $(pwd)

for f in ./*.* 
do 
    echo "$f"

    confirm && mv "$f" $(echo "$f" | sed -e 's/^[^A-Za-z]*//g' -e 's/ - /_/g' -e 's/-/_/g' -e 's/ /_/g')
done

mkdir -p sample_files
cd sample_files
rm -rf ./*.*
touch "006-Deepthroat challenge Kate England_720p.mp4"
touch "007-kate England - strip poker.flv"
touch "008-Kate England does threesome with two monster black cocks_720p.mp4"
touch "011-mdhgkatejohnny_mobile.mp4"
touch "013-Trip with the family part 2_480p.mp4"
touch "014-Trip with the family part 3_480p.mp4"
touch "015-Trip with the family part 4_480p.mp4"
touch "0105 Taboo Diaries - Kate England - Daddy Loves Kates Rosebud.wmv"
touch "Blonde Teen Kate England Fucked In The Car_480p.mp4"
touch "KateEnglandPovwithKate.mp4"
#!/usr/local/bin/zsh
#!/bin/sh
#!/bin/bash
#
# sample_template 
# created at 20170619_193257


echo "sample_template.sh at " $(pwd) $0


echo $1
#!/bin/bash

sudo -v

ls /etc 

purge 


#!/bin/bash

function twolinefunc () {

    local help_str="gd_list_folder_by_id - will list a folder from google drive"

    if [[ $# -lt 1 ||  $1 = "-h" || $1 == "--h" || $1 == "-help" ]]; then
        echo $help_str
        return;
    fi;

    local ids=$(gdrive list \
        -m 1000 \
        --absolute \
        --no-header \
        --order "name" \
        --name-width 0  \
        --query "trashed = false and mimeType = 'application/vnd.google-apps.folder' and '0B3zid4NhlDYvVzJjeWdSbXk4VkU' in parents"  \
        | cut -d ' ' -f 1 )


    for id in $ids
    do
        echo $id >> out.txt
         twolinefunc $id
    done
}

twolinefunc $@

