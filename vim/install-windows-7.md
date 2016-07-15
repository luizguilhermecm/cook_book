# Installing Vim on Windows 7

***
## `export $HOME=C:/Users/snk/`
***

### Simple Installation

1. Download gvim and install it using **$HOME** as root dir of Vim.

0. Copy all files of `/Google Drive/___backup-no-sync/geek/dotvim-win7`
and paste it at **$HOME**.

4. Rename the folder from 'dotvim' to '.vim', windows do not allow this
renaming made with **F2**. Use the `rename-dot-vim.bat`, **cmd.exe** or
**bash** to do the job.


5. Copy 'vimrc' file (~/.vim/vimrc) at (~/).
    I did not achive this using a link, just copy it

### Known

> plugins that doesn't work by default with windows:
>    YouCompleteMe -> cygwin solved
>     Ag -> Requires the the_silver_searcher, which is available on cygwin
>         fix is at end of file.
>     Valloric/MatchTagAlways
>     mutewinter/swap-parameters
>     'SirVer/ultisnips'
>
>
