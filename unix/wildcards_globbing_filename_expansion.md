
Wildcards in bash are referred to as pathname expansion. Pathname expansion is
also sometimes referred to as globbing.

Bash itself cannot recognize Regular Expressions. Inside scripts, it is commands and utilities -- such as sed and awk -- that interpret RE's.

  cat ./* > ../collection  # CORRECT

useful starting-point list of shell metacharacters is “*?:[]"<>|(){}&'!\;$” (this


Pathname expansion "expands" the "*", "?", and "[...]" syntaxes when you type them as part of a command, for example:

  $ ls *.jpg         # List all JPEG files
  $ ls ?.jpg         # List JPEG files with 1 char names (eg a.jpg, 1.jpg)
  $ rm [A-Z]*.jpg    # Remove JPEG files that start with a capital letter


http://www.tldp.org/LDP/abs/html/globbingref.html#FTN.AEN17572
http://www.linuxjournal.com/content/bash-extended-globbing
