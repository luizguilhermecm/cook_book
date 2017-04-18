# Mapping

`<silent>` the keys will not be printed at command bar


***

When `*` is used to find next match, it jump to next.

To prevent the jump at first match:

```
"nnoremap <silent> * :let stay_star_view = winsaveview()<cr>*:call winrestview(stay_star_view)<cr>
```

***

" Previous Window
nnoremap <silent> gp :wincmd p<CR>
" Equal Size Windows
nnoremap <silent> g= :wincmd =<CR>
" Swap Windows
nnoremap <silent> gx :wincmd x<CR>

" Scroll larger amounts with C-j / C-k
nnoremap <C-j> 15gjzz
nnoremap <C-k> 15gkzz
vnoremap <C-j> 15gjzz
vnoremap <C-k> 15gkzz
" Underline the current line with '-'
nnoremap <silent> <leader>ul :t.\|s/./-/\|:nohls<cr>

" Underline the current line with '='
nnoremap <silent> <leader>uul :t.\|s/./=/\|:nohls<cr>

" copy current file name (relative/absolute) to system clipboard
" from http://stackoverflow.com/a/17096082/22423
if has("mac") || has("gui_macvim") || has("gui_mac")
  " relative path  (src/foo.txt)
  nnoremap <silent> <leader>yp :let @*=expand("%")<CR>

  " absolute path  (/something/src/foo.txt)
  nnoremap <silent> <leader>yP :let @*=expand("%:p")<CR>

  " filename       (foo.txt)
  nnoremap <silent> <leader>yf :let @*=expand("%:t")<CR>

  " directory name (/something/src)
  nnoremap <silent> <leader>yd :let @*=expand("%:p:h")<CR>
endif


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
