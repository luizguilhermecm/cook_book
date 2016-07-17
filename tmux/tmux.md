tmux
====

#### Installing

To install **tmux** with _homebrew_ :

```
brew install tmux
```

#### First of All


tmux may be controlled from an attached client by using a key combination of a
prefix key, `C-b`, `(Ctrl-b)`, `<C-b>` by default, followed by a command key.

So, if you wanna send a command to tmux, the prefix key will be used to do that.

From now, the words: _prefix key_, `C-b` and `Ctrl-b` will be used assuming that
you know what that means.

One more thing, the `C-b` is two keys, when a third key will be necessary it
will be used the follow syntax `<C-b> a`, meaning that the _prefix key_ has to
be pressed and then the key _a_. If you are familiar with _vi_ you will be fine.

##### tmux Message Bar

When tmux is running, it will show a new bar on the bottom of screen.
The confirmations messages, and all interactions between you and tmux will be
through this bar.

And again, if you are familiar with _vi_ you are fine.


#### tmux Getting Out of a Session

Before learn how to start a new session, is better know how to get out, it is
like _vi_, you can stay there forever if you do not know how to run out.

The key binding to do that is `<C-b> &`, and it will ask for a confirmations
_y/n_.

This isn't the only way to do it, but keep this in mind for now.

#### tmux Session

To start a new session with tmux:

```
tmux
```

By default, sessions will be numbered, the first will be 0, then 1 and so on.

##### tmux Named Session

To start a new named session with tmux:

```
tmux new -s [name]
```

#### Attach and Detach

tmux is based on sessions, it is possible to have and keep a lot of then at
same time.

When a new session is created, it means that you are attaching to this new
session.

Detach is like switching tabs, it will not be visible but will be there running.
To detach the current session, use the command `tmux detach` or the key binding
`<C-b> d`.


##### Example

Take the follow *script*:

```
$ tmux
<C-b> d
$ tmux new -s app
$ tmux detach
$ tmux
<C-b> d
```

That will create 3 new sessions, the list of sessions can be seen using

```
$ tmux list-sessions
```

The output would be:

```
0: 1 windows (created Tue Dec 22 14:47:44 2015) [87x50]
2: 1 windows (created Tue Dec 22 14:48:06 2015) [87x50]
app: 1 windows (created Tue Dec 22 14:47:52 2015) [87x50]
```

This output is showing 3 sessions, named _0_, _2_ and _app_.
So, the first `$ tmux` of the script created the session named _0_.
See that the _app_ session was created after the _0_ session, and there is
no session named as _1_, its jumped to _2_.

At this time, any session can be re-opened using:

```
$ tmux attach -t [name]
```
In this case:
```
$ tmux attach -t 0
$ tmux attach -t 2
$ tmux attach -t app
```


