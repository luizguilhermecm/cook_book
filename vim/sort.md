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

***
in normal mode
`q:` `q/` `q?` open the command-line window.

***

the mapping with **iabbrev**

```
" Insert date
iabbrev ddate <C-R>=strftime("%Y-%m-%d")<CR>

" Insert a console statements
iabbrev clg console.log
iabbrev cld console.debug
iabbrev clda console.debug(arguments)
```



