# Cygwin Packages Installed

```
# Dump list of all installed packages (except libraries)
cygcheck -cd | tail -n +3 | cut -f 1 -d " " | grep -iv ^lib | grep -iv ^_ > packages.txt

# Show list of package name (comma separated) in a suitable format for re-installation
sed -e :a -e '$!N; s/\n/,/; ta' packages.txt

# Reinstall packages from list
#/cygdrive/c/cygwin/setup -q --packages `sed -e :a -e '$!N; s/\n/,/; ta' packages.txt`
```

0. adwaita-icon-theme
0. alternatives
0. base-cygwin
0. base-files
0. bash
0. binutils
0. bzip2
0. ca-certificates
0. coreutils
0. crypt
0. csih
0. cygrunsrv
0. cygutils
0. cygwin
0. cygwin-devel
0. dash
0. dejavu-fonts
0. desktop-file-utils
0. diffutils
0. dri-drivers
0. editrights
0. file
0. findutils
0. gamin
0. gawk
0. getent
0. git
0. git-svn
0. gitk
0. grep
0. groff
0. gsettings-desktop-schemas
0. gtk-update-icon-cache
0. gvim
0. gzip
0. hicolor-icon-theme
0. hostname
0. info
0. ipc-utils
0. less
0. login
0. lynx
0. man-db
0. mintty
0. mysql-common
0. nano
0. ncurses
0. openssh
0. openssl
0. p11-kit
0. p11-kit-trust
0. perl
0. perl-Carp
0. perl-Error
0. perl-Scalar-List-Utils
0. perl-TermReadKey
0. perl-YAML
0. perl_autorebase
0. perl_base
0. popt
0. python
0. python3
0. rebase
0. rsync
0. ruby
0. ruby-json
0. ruby-minitest4
0. ruby-rake
0. ruby-rdoc
0. rubygems
0. run
0. sed
0. shared-mime-info
0. subversion
0. subversion-perl
0. tar
0. tcl
0. tcl-tk
0. terminfo
0. the_silver_searcher
0. tmux
0. tzdata
0. util-linux
0. vim
0. vim-common
0. vim-minimal
0. wget
0. which
0. xorg-x11-fonts-dpi75
0. xxd
0. xz
0. zlib0
0. zsh
