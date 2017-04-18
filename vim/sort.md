Sort
====

yank all file/buffer `gy`

```
nnoremap gy :0,$ y<cr>
```

***

select entire buffer/file `vy`

```
nnoremap vy ggVG
```

***

Create newlines without entering insert mode

```
nnoremap go o<Esc>k
nnoremap gO O<Esc>j
```

***

remap U to <C-r> for easier redo
from http://vimbits.com/bits/356

  nnoremap U <C-r>

***



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


***

# How to paste yanked text into Vim command line?

Yes. Hit Ctrl-R then ". If you have literal control characters in what you have yanked, use Ctrl-R, Ctrl-O, ".

[stackoverflow](http://stackoverflow.com/questions/3997078/how-to-paste-yanked-text-into-vim-command-line)


***

calculator
select the numbers
!bc
