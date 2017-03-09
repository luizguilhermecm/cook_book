6.6 Errors
http://zsh.sourceforge.net/Doc/Release/Shell-Grammar.html#Shell-Grammar

Certain errors are treated as fatal by the shell: in an interactive shell, they cause control to return to the command line, and in a non-interactive shell they cause the shell to be aborted. In older versions of zsh, a non-interactive shell running a script would not abort completely, but would resume execution at the next command to be read from the script, skipping the remainder of any functions or shell constructs such as loops or conditions; this somewhat illogical behaviour can be recovered by setting the option CONTINUE_ON_ERROR.

Fatal errors found in non-interactive shells include:

Failure to parse shell options passed when invoking the shell
Failure to change options with the set builtin
Parse errors of all sorts, including failures to parse mathematical expressions
Failures to set or modify variable behaviour with typeset, local, declare, export, integer, float
Execution of incorrectly positioned loop control structures (continue, break)
Attempts to use regular expression with no regular expression module available
Disallowed operations when the RESTRICTED options is set
Failure to create a pipe needed for a pipeline
Failure to create a multio
Failure to autoload a module needed for a declared shell feature
Errors creating command or process substitutions
Syntax errors in glob qualifiers
File generation errors where not caught by the option BAD_PATTERN
All bad patterns used for matching within case statements
File generation failures where not caused by NO_MATCH or similar options
All file generation errors where the pattern was used to create a multio
Memory errors where detected by the shell
Invalid subscripts to shell variables
Attempts to assign read-only variables
Logical errors with variables such as assignment to the wrong type
Use of invalid variable names
Errors in variable substitution syntax
Failure to convert characters in $'...' expressions
If the POSIX_BUILTINS option is set, more errors associated with shell builtin commands are treated as fatal, as specified by the POSIX standard.

