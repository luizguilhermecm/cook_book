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

##### Text to Uppercase or Lowercase

To make a selected text as *uppercase* or _lowercase_ use:


```
# uppercase
gU
```

```
# lowercase

gU
```
