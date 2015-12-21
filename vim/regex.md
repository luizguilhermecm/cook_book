Useful Regex
============


#### Delete blank lines

```
:g/^$/d
```

How does it works?

`:g` will execute a command on lines which match a regex.
The regex is 'blank line' and the command is `d` (delete)

#### Replace with new line

Replace a new line using `\r` instead of `\n`.  [stackoverflow](http://stackoverflow.com/questions/71323/how-to-replace-a-character-by-a-newline-in-vim)

```
:%s/x/\r/g
```

#### Capitalizing Text

##### Selected Text to Uppercase or Lowercase

`gU` : to *UPPERCASE*

`gu` : to *lowercase*

##### Current Line to Uppercase or Lowercase

`gUU` : to *UPPERCASE*

`guu` : to *lowercase*

##### First Letter Only

`:%s/\<./\u&/g` : to _lowercase_

`:%s/\<./\U&/g` : to _UPPERCASE_

How does the above tricks words:
* `\<` Matches the start of a word
* `.`  Matches the first character of a word
* `\u` Tells Vim to uppercase the following character in the substitution string (&)
* `&`  Means substitute whatever was matched on the LHS

This was got on [stackoverflow](http://stackoverflow.com/questions/17440659/capitalize-first-letter-of-each-word-in-a-selection-using-vim)
there are alternatives to do the same.

