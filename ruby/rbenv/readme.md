
# `rbenv` is a tool for simple Ruby version management.


[github.com/rbenv](https://github.com/rbenv/rbenv)

```
$ brew update
$ brew install rbenv
```

Afterwards you'll still need to run rbenv init for instructions as stated in the caveats. You'll only ever have to do this once.

```
rbenv init

# 2.3.1 stable version of ruby
rbenv install 2.3.1
```

add the the following to ~/.zshrc:

`eval "$(rbenv init -)"`


`rbenv shell 2.3.1`
