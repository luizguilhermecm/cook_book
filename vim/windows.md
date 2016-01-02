windows
=======

### Split Window


#### Vertically

| cmd | function |
|:---|:----|
|`:vnew`, `:vne` | new vertical window at left side |
|`:[N]vnew`, `:[N]vne`| like `:vnew`, but will have `[N]` columns|
|`:rightb`, `:rightbelow` | if `vnew` is passed as option, the new window will be on right side |
|`:bel`, `:belowright`| if `vnew` is passed as option, the new window will be on right side |
|`:lefta`, `:leftabove`| if `vnew` is passed as option, the new window will be on left side |
|`:abo`, `:aboveleft`| if `vnew` is passed as option, the new window will be on left side |

#### Options

First of all, lets learn how to use the options that will be listed here.


As a example, without knowing what the option does, lets apply the option
`splitright`.

This options is like all those which is setted on `.vimrc` file, there is two
ways to apply it:

1. Use the command `:set` in *normal mode* to apply the configuration, but this
will not persist, so when *vim* be closed and re-open the configuration is
lost.
```
:set splitright
```

2. The second way to do it, and this will persist when closing is inserting the
option inside `.vimrc` file, as follow:
```
set splitright
```

The list of options:

`nosplitright`, `nospr` : make the `:vnew` split to left side (this is the default)
`splitright`, `spr` : make the `:vnew` split to right side  (disabled as default)

