# zsh

## Startup Files

Files which **ZSH** reads:

```
$ZDOTDIR/.zshenv
$ZDOTDIR/.zprofile
$ZDOTDIR/.zshrc
$ZDOTDIR/.zlogin
$ZDOTDIR/.zlogout
```

If `$ZDOTDIR` is not set, them the value of `$HOME` will be used.


`.zshenv` is sourced on all invocations of the shell.
It should contain commands to set the command search path, plus
other important environment variables.

`.zshenv` should not contain commands that produce output or assume the shell
is attached to a tty.

`.zshrc` is sourced in interactive shells. It should contain commands to set up
aliases, functions, options, key bindings, etc.

`.zlogin` is sourced in login shells. It should contain commands that should be
executed only in login shells.

`.zlogout` is sourced when login shells exit.

`.zprofile` is similar to `.zlogin`, except that it is sourced before `.zshrc`.
`.zprofile` is meant as an alternative to `.zlogin` for ksh fans; the two are
not intended to be used together, although this could certainly be done if
desired.

`.zlogin` is not the place for alias definitions, options, environment
variable settings, etc.; as a general rule, it should not change the shell
environment at all. Rather, it should be used to set the terminal type and run
a series of external commands (fortune, msgs, etc).



The configuration files are read in the following order:

/etc/zshenv
~/.zshenv
/etc/zprofile
~/.zprofile
/etc/zshrc
~/.zshrc
/etc/zlogin
~/.zlogin
~/.zlogout
/etc/zlogout
