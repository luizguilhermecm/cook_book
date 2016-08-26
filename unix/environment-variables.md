# environment variables [EV]

### commands

To print the value of an **EV**.
```
$ echo $PATH
[output the value of EV, a blank line if EV does not exist]
```


### `/etc/path.d` directory

The directory `/etc/path.d` keeps files with **paths** that will be appended
to the `$PATH` **EV**.

To add a *path* into `$PATH` using the `/etc/path.d` directory.


``` sh

$ cd /etc/path.d

$ touch filename_of_file

$ vim filename_of_file

# insert the absolute path to file and save it

```





### PATH

> When you type a command to run, the system looks for it in the directories
> specified by PATH in the order specified


