# create files with the pattern file1, file2
touch file{1..100}

# create files with the pattern file01, file02
touch file{01..10}

# create new alias
alias keyword='cd ~/goto/somewere'
ln -s Downloads x


# man page to txt
man grep | col -b > grep.txt

# search the work 'regex' in man pages
apropos regex

# commands that I do not know nothing but I had faced
opensnoop
dtrace
ag
➜ _____________saved for d in `find . -type d -maxdepth 3`; do find $d -type f | wc -l && echo "$d : $_" ; done
less 2016-07-13_aai-git.zip # to peed inside of zip file content 

# print now() date
date "+%Y-%m-%d"
count files in dir: ls -F |grep -v / | wc -l
