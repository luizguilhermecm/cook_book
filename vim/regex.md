Useful Regex
============


#### Delete blank lines

```
:g/^$/d
```

How does it works?

`:g` will execute a command on lines which match a regex.
The regex is 'blank line' and the command is `d` (delete)

