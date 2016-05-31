# rsync

```
rsync --dry-run -avzh --delete SRC DST
```

`--dry-run` show what would be done, simulation only.

`-a` copies data recursively (but don’t preserve timestamps and permission
    while transferring data

`-v` verbose.

`-z` compress file data.

`-h` human-readable, output numbers in a human-readable format.

`--delete` if a file existis on DESTINATION and do not on SOURCE it will be
            deleted.

* When `--delete` is not used, the file on DESTINATION will stay there until a
  new file with same name is syncronized, then the old one is replaced.

### Using dir name with slash

What is the difference of using one or another of below:

`rsync -a dir1 dir2`  **vs** `rsync -a dir1/ dir2`

The difference beteween then is the slash on the `dir1/`

The result of `rsync -a dir1 dir2` would be a copy of *dir1* inside *dir2*.


And the result of `rsync -a dir1/ dir2` would be a copy of dir1 content inside
dir2.


