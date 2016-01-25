# Listing

***

```shell
ls -R | grep ":$" | sed -e 's/:$//' -e 's/[^-][^\/]*\//--/g' -e 's/^/ /' -e 's/-/|/'
```

output when done on cookbook

```
 |-android
 |-c
 |---scanf_int
 |-cmd
 |-cvs
 |-database
 |---oracle
 |-dot_file
 |-english
 |-ffmpeg
 |-git
 |-glyphicons_free
 |---glyphicons
 |-----png
 |---glyphicons-social
 |-----png
 |-javascript
 |-markdown
 |-non-ti
 |---mapas-mentais
 |---meal-frequence
 |-osx_services
 |-postgresql
 |-python
 |-regex
 |-ruby
 |---read_write_file
 |---upload-file-with-sinatra
 |-----uploads
 |-----views
 |-shell-script
 |-shortcuts
 |-terminal-commands
 |-tmux
 |-vim
 |-vim-book
 |-vm-setup
```

***

total size of all dirs into actual

```
du -shc *
```

***

size of directory

```
du -sh

$ du -sm *
$ du -sm

```

***

list all files with relative path

```
du -ah
```

output

```
[…]
4.0K	./vim/regex.md
4.0K	./vim/simple-cmd.md
4.0K	./vim/sort.md
4.0K	./vim/studying.md
4.0K	./vim/utils.md
[…]
```

***

List files and dirs sorted by size

```
du -hsx ./* | sort -n -r | head -10
```

ouput on cookbook;

```
192K	./vim
 88K	./terminal-commands
 76K	./icons.md
```

List dirs sorted by size

```
du -m | sort -nr | head -100
```

***


