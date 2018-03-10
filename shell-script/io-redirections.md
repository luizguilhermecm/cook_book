## I/O Redirection

### Standard Output

Standard Output is show the output in the screen.

To redirect the output and send it to a file  use `>> , >`.

`ls >> output_file`

`ls > output_file`


### Standard Input

Same as output, the standard is the keyboard.

With `< , << ` it can be redirected

`sort < file.txt`

Merging both redirections

`sort < file.txt > sorted.txt`



```
pgm > file
# Output of pgm is redirected to file

pgm < file
# Program pgm reads its input from file

pgm >> file
# Output of pgm is appended to file

n > file
# Output from stream with descriptor n redirected to file

n >> file
# Output from stream with descriptor n appended to file

n >& m
# Merges output from stream n with stream m

n <& m
# Merges input from stream n with stream m

<< tag
#Standard input comes from here through next tag at the start of line

|
#Takes output from one program, or process, and sends it to another

#Note that the file descriptor 0 is normally standard input (STDIN), 1 is standard output (STDOUT), and 2 is standard error output (STDERR).
```
