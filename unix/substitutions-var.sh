http://mywiki.wooledge.org/BashFAQ/073

${var-word}             # if var is defined, use var; otherwise, "word"
${var+word}             # if var is defined, use "word"; otherwise, nothing
${var=word}             # if var is defined, use var; otherwise, use "word" AND...
                        #   also assign "word" to var
${var?error}            # if var is defined, use var; otherwise print "error" and exit
These are the only completely portable expansions available.

POSIX shells (as well as KornShell and BASH) offer those, plus a slight variant:


${var:-word}             # if var is defined AND NOT EMPTY, use var; otherwise, "word"
similarly for ${var:+word} etc.
