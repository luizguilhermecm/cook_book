# Listing

***

```shell
ls -R | grep ":$" | sed -e 's/:$//' -e 's/[^-][^\/]*\//--/g' -e 's/^/ /' -e 's/-/|/'
```

with du

`-I .git` to ignore a directory

```
du -d 5  | grep "^\d" | sed -e 's/^\d//' -e 's/[^-][^\/]*\//--/g' -e 's/^/ /' -e 's/-/|/'
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


```
sudo du -h -d 1  | grep "^\d" | sed -e 's/^\d//' -e 's/[^-][^\/]*\//--/g' -e 's/^/ /' -e 's/-/|/' > du-dirs-1.txt
sudo du -h -d 2  | grep "^\d" | sed -e 's/^\d//' -e 's/[^-][^\/]*\//--/g' -e 's/^/ /' -e 's/-/|/' > du-dirs-2.txt
sudo du -h -d 3  | grep "^\d" | sed -e 's/^\d//' -e 's/[^-][^\/]*\//--/g' -e 's/^/ /' -e 's/-/|/' > du-dirs-3.txt
sudo du -h | grep "^\d" | sed -e 's/^\d//' -e 's/[^-][^\/]*\//--/g' -e 's/^/ /' -e 's/-/|/' > du-dirs-all.txt
tree -afi >> tree-all.txt
```
