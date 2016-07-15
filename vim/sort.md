Sort
====


```
# se iniciar com tabulação + id=, substitui por 'id=', remove a tabulação
:%s/^I\(id=\)/\1/g
```

print the line number on document
`map <F1> :execute "normal! i" . ( line(".") + 1 )<cr>`



all mapped key to file
```
:redir! > vim_keys.txt
:silent verbose map
:redir END
```
