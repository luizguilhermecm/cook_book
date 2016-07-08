# grep -- file pattern searcher

The grep utility searches any given input files, selecting lines that match one
or more patterns.  By default, a pattern matches an input line if the regular
expression (RE) in the pattern matches the input line without its trailing
newline.  An empty expression matches every line.  Each input line that matches
at least one of the patterns is written to the standard output.

Syntax:

```
usage: grep [-abcDEFGHhIiJLlmnOoqRSsUVvwxZ] [-A num] [-B num] [-C[num]]
	[-e pattern] [-f file] [--binary-files=value] [--color=when]
	[--context[=num]] [--directories=action] [--label] [--line-buffered]
	[--null] [pattern] [file ...]
```

## grep commands

### Search in a single file

Basic usage of grep to search for a string in the given file
```
$ grep "literal_string" filename
```

### Search in a multiple files

Syntax:
```
$ grep "string" FILE_PATTERN
```

Given the files below:

> log0.txt
> log1.txt
> log.txt
> log3

To search for a string in all of those files could be used the command:

```
$ grep "string" log*
```

The output of grep will show the name of file too.

### Regular expressions

The string given to grep can be also a regular expression.

Syntax:
```
$ grep "REGEX"
```

Example using a regular expression:

```
$ grep "word.*n$"
```

This command will search for all line that match the regular expression
`word.*n$`.

`word.*n$` returns line if it contains a string *word* and ends with the letter
*n*. The `$` means **EOL** - *End Of Line*.

#### Operators in Regular expressions

The operators takes the *preceding item* as pivot.

An example with the regex `x*n$`.

* The operator is `*`
* The *preceding item* is `x`

The function of the operator `*` is match the preceding operator zero or more
times, some possible matches to that regex could be:

1. *xxxxxxn*
1. *xxxn*
1. *xn*
1. *asdfasdfn*
1. *n*
1. *randon words with an N letter at the end of line n*

The *n* and *asdf* matches can be strange at first, but it is correctly because
the operator `*` matches zero ocurrences of it *preciding item*, which means
that item may never be there, so, any line with last letter **n** is enough
no matter what is before.

#### List Regular Expression Operators

1. `*` **ZERO** or more times.
1. `+` **ONE** or more times.
1. `?` **ZERO** or **ONE**
1. `{n}` exactly **N** times
1. `{n,}` **N** or more times
1. `{,m}` at most **M** times
1. `{n,m}` at least **N** but no more than **M**

### grep search options

`-i` case insensitive search

```
$ grep -i 'string' FILE
```

***

`-w` full word, not sub-string

```
$ grep -w 'string' FILE
```
***

`-r` searching in all files recursively

```
$ grep -r 'string' FILE
```

***

`-e` search for more than one pattern

```
# search for all pattern, used OR between them.
$ grep -e 'string' -e 'string2' -e 'string3' FILE
```

***


`-e` search for more than one pattern





### grep output options

`-A nb` print **nb** lines after the match

```
# will print the 3 lines after the matched line.
$ grep -A 3 'string' FILE
```
***

`-B nb` print **nb** lines before the match

```
# will print 3 lines before the matched line.
$ grep -A 3 'string' FILE
```
***

`-C nb` print **nb** lines after and before the match

```
# will print 3 lines after and before the matched line.
$ grep -A 3 'string' FILE
```

***

`--color` highlights the match

```
$ grep --color 'string' FILE
```

***

`-l` print only the name of files with match

`-L` print only the name of files without match

`-L` print only the name of files without match

`-v` (reverse) print lines without matches

`-n` print the line number along with the filename

`-c` print the number of matches in each file

`-o`, `--only-matching` print only the matching part of the line

`-`

`-`

`-`

`-`

`-`

`-`
grep -R -i 'palavra' .
```
```
```
```
```
```
```
```
```
```
```
```
```
