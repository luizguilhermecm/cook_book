mkdir
-----

### Options

`-p` create intermediate directories as required.
e.g: to create two directories where the second will be inside of the first one
like `path/first/second`.

In case of only the direcory `path` exists and the user is there.
Run `mkdir first/second` will return this error:

`mkdir: first: No such file or directory`

The option `-p` makes that possible.
In that example, if using it like `mkdir -p first/second` will in fact create
both directories.

***
