
# VIM

First thing is to set up the **.vimrc** file where it should be.

I am using Mac OS X, so the run configuration file are expected to be in the
home folder and be named as `.vimrc`.

To keep things nice and easy to manage, each configuration will be done at a
vim file and will be imported at the main run configuration file.

An simple **vimrc** example:

```
" .vimrc file

" New commands
source ~/full/path/to/commands.vim
```

## [The Vim Configuration of Champions][git_vim_champ]

The ["The Vim Configuration of Champions"][git_vim_champ] is a run
configuration I have been using since I began with _VIM_ and I will get it to
make minimal **dotvim** configuration.

## Vundle


**Vundle**, the plug-in manager for Vim.

Vundle is short for Vim bundle

The vundle is installed by `vundle.vim` which is loaded by **vimrc**.

The **vimrc** will have to be like;

```
" .vimrc file

" Vundle install
source ~/.vim/vundle.vim
```

And the `vundle.vim` file is;

```
" ----------------------------------------
" Vundle
" ----------------------------------------

set nocompatible " be iMproved
filetype off     " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/vundle'

" Source all the plugins with a global variable set that ensures only the
" Plugin 'name' code will be called.
let g:vundle_installing_plugins = 1
for file in split(glob('$HOME/.vim/vundle_plugins/*.vim'), '\n')
  exe 'source' fnameescape(file)
endfor
for file in split(glob('$HOME/.vim/vundle_plugins/custom/*.vim'), '\n')
  exe 'source' fnameescape(file)
endfor
unlet g:vundle_installing_plugins

call vundle#end()
```

To make it clear some lines will have to be explained.

**Vundle** will always look to one folder looking for plugins, it is
`~/.vim/bundle/`.

```
set rtp+=~/.vim/bundle/vundle/
```

The **rtp** stands for _run time path_.
There is where **vundle** plugin has to be.

To do that use this: `git clone git://github.com/gmarik/vundle.git bundle/vundle`

Other line is

```
for file in split(glob('$HOME/.vim/vundle_plugins/*.vim'), '\n')
```

and it has the path `~/.vim/vundle_plugins/*.vim`.






[git_vim_champ]: https://github.com/mutewinter/dot_vim "mutewinter/dot_vim"


