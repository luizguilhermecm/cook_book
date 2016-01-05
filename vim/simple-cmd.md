Simple Vim Commands
-------------------

#### Vim Change Verb 'c'

`cw`, `ciw` change the word under cursor.

`caw` change word under cursor, the right space is lost.

`ci"` change text inside of double quotes, keeps the quotes.

`ci'` change text inside of single quotes, keeps the quotes.

``ci` `` change text inside of backtick/backquote, keeps the quotes.

`ci(` change text inside parentesis, keeps the parentesis.

`ci{` change text inside braces, keeps the braces.

`ci[` change text inside brackets, keep the brackets.

`ci<` change text inside less than and greater than, keep the brackets.

`cc` change whole line.

#### Vim Yank Verb 'y'

Basically, all commands using the **change** verb will works with **yank**.

To avoid a future changes on **change** commands, all commands will be
"duplicated" here.

`yw`, `yiw` yank the word under cursor.

`yaw` yank word under cursor, the right space is lost.

`yi"` yank text inside of double quotes, keeps the quotes.

`yi'` yank text inside of single quotes, keeps the quotes.

``yi` `` yank text inside of backtick/backquote, keeps the quotes.

`yi(` yank text inside parentesis, keeps the parentesis.

`yi{` yank text inside braces, keeps the braces.

`yi[` yank text inside brackets, keep the brackets.

`yi<` yank text inside less than and greater than, keep the brackets.

`yy` yank whole line.


