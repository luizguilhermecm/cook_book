# tree

## Usefull tree commands

```
tree -fiQ --prune
```

**Options**

`-i` print without hierarchy identation.

`-f` print full relative path for each file.

`-d` list only dirs

`-a` all files are printed

`-L level` max display depth of the directory tree

`--prune` do not print empty directory

`-p` print file permission like `ls -l`

`-s` print the size of each file in bytes

`-h` human readable

`--si` pretty like `-h`

`--du` print the size of directory considering all files in it.

`-C` print with color

`-A` Turn on ANSI line graphics hack when printing the indentation lines.

`-P pattern` print only files that matches pattern

* `-P '*.java'` only java files.
* `-P '*MB*'` only files with **MB** on its name.
* `-P '[A-M]*'` only files with name with first letter between _A_ to _M_.

`-I pattern` do not list files matching pattern.

`Q` print file name quoted


***
list files with time of creation
tree -Df -i --timefmt '%Y-%m-%d %H:%M:%S' -F
