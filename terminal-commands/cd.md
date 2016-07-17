# cd

## the $dirstack

The var **$dirstack** keep the bread crumb of directories visited.

To see it: `$ echo $dirstack`

### the `$ dirs`

The `dirs` command print the stack.
Used with options `-v` will print it as a numbered list.

```shell
$ dirs -v
0	~/github-projects/speedread
1	~/github-projects
2	~
3	/Volumes/snk-hdd/_concursos
4	~/Downloads
5	/Volumes/snk-hdd/Movies/Palestras/leandro-karnal
6	/Volumes/snk-hdd
```

Those numbers can be used with `cd` command, like an alias.

Using the output above, the command `$ cd -4` would change to directory
**4	~/Downloads**.

Other way to use the stack is `$ cd +1`. What this does? Is a question mark yet.

