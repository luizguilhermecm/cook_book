<html>
<head>
    <title>My Notes</title>
    <link href="bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <h1>My notes</h1>
    <?php markdown(file_get_contents('your_content.md')); ?>
</body>
</html>
# Mapping

## Vim Modes

Vim can behave and do several things, and depending on the mode it is on the
momemnt, list of vim modes:

| mode | help file |
| :-------     |:---------------------|
| normal       | :help Normal-mode       |
| insert       | :help Insert-mode       |
| visual       | :help Visual-mode       |
| select       | :help Select-mode       |
| command-line | :help Command-line-mode |
| Ex-mode      | :help Ex-mode           |

#### Mapping with :map or :noremap

':map' Is recursive and ':noremap' Isn't.

What does this mean?

An example:


```
:map a b
:map b gg
:noremap x a
```

That mapping will map the `a` in `b` and `b` in `gg`.
As said before the `:map` is recursive, which means when `a` is hit, it will do
`gg`.

That does not happens when `x` is hit, because `:noremap` is not recursive, so
the `a` will not trigger other mapping.



#### Clear last search highlight

Map the `<esc>` key to call `:noh` which clear the highlight, so:

```
nnoremap <silent> <esc> :noh<cr><esc>
```
