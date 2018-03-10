https://www.dwheeler.com/essays/fixing-unix-linux-filenames.html
What is IFS?

IFS (the “input field separator”) is an ancient, very standard, but not well-known capability of Bourne shells. After almost all substitutions, including command substitution ‘...‘ and variable substitution ${...}, the characters in IFS are used to split up any substitution results into multiple values (unless the results are inside double-quotes). Normally, IFS is set to space, tab, and newline — which means that by default, after almost all substitutions, spaces are interpreted as separating the substituted values into different values. This default IFS setting is very bad if file lists are produced through substitutions like command substitution and variable substitution, because filenames with spaces will get split into multiple filenames at the spaces (oops!). And processing filenames is really common.

Changing the IFS variable to include only newline and tab makes lists of filenames much easier to deal with, because then filenames with spaces are trivially handled. Once you set IFS this way, instead of having to create a “while read...” loop, you can place a ‘...‘ file-listing command in the “usual place” of a file list, and filenames with spaces will then work correctly. And if filenames can’t include tabs and newlines, you can correctly handle all filenames.

A quick clarification, if you’re not familiar with IFS: Even when the space character is removed from IFS, you can still use space in shell scripts as a separator in commands or the ‘in’ part of for loops. IFS only affects the splitting of unquoted values that are substituted by the shell. So you can still do this, even when IFS doesn’t include space:

  for name in one two three ; do
    echo "$name"
  done
How to change IFS to just newline and tab

I recommend using this portable construct near the beginning of your (Bourne-like) shell scripts:

  IFS="`printf '\n\t'`"
If you have a really old system that doesn’t include the POSIX-required printf(1), you could use this instead (my thanks to Ralph Corderoy for pointing out this issue, though I’ve tweaked his solution somewhat):

  IFS="`echo nt | tr nt '\012\011'`"
It’s quite plausible to imagine that in the future, the standard “prologue” of a shell script would be:

  #!/bin/sh
  set -eu
  IFS="`printf '\n\t'`"
