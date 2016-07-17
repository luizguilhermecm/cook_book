# umask : permissions

* **FYI** : _The output value of **umask** and the imput of **chmod** has the
same face, **BUT** their meaning has **NOTHING** in commom. **DO NOT** look
at **umask** output (022) and try to use the logic of **chmod**.

## default permission of umask

To see the umask used as default:

`$ umask`
> > 022

ou

`$ umask -S`
> > u=rwx,g=rx,o=rx

The value of output **022** says the default permission to be applied in
files and directories.

* `022`
  * directories will have: **'rwx,r-x,r-x'** or **755**.
    * `chmod 755 <directory-path>`
  * files will have: **'rw-,r--,r--'** or **755**.
    * `chmod 644 <file-path>`



## Copying Files From File System FAT

The file system **FAT** does not use any kind of permission system.
This mean that any file stored in this file system will have its permission
thrown away.

If **FAT** does not implements permission, it does not control who or what,
everything is allowed.
Because of that, the permission of every file and directory will be shown by
a `ls -l` output with `rwx-rwx-rwx`

```
➜  SNK-16 ls -l
total 239744
-rwxrwxrwx  1 snk  staff    64M Jul  8 17:33 Nova pasta.zip
drwxrwxrwx@ 1 snk  staff    32K Jul  7 21:17 geek
-rwxrwxrwx  1 snk  staff     0B Jul 16 22:16 permission
drwxrwxrwx  1 snk  staff    32K Jul  7 18:29 txxx
```

This will mess-up even more when something be copied from **FAT** to a file
system with permissions.
The permission of a *plaintext* file will have permission `a+x` and could be
executed by anyone.

### Fixing Permissions

To fix the files permission run `chmod 644 <file-path>`.

To fix the directories permissions run `chmod 755 <directory-path>`.

In some cases, the command `find` can be used to fix several items easily.


```shell
# to fix files permissions
find . -type f -exec chmod 644 {} \;

# to fix directories permissions
find . -type d -exec chmod 755 {} \;
```
