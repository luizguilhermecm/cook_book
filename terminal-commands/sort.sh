# create files with the pattern file1, file2
touch file{1..100}

# create files with the pattern file01, file02
touch file{01..10}

# create new alias
alias keyword='cd ~/goto/somewere'
ln -s Downloads x


# man page to txt
man grep | col -b > grep.txt
