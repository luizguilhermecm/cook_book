Studying Vim
------------

#### Search

Basic search:

`/word` search for *word*

`?word` search for *word*

To use the **OR** when searching, use brackets, staying inside the brackets the
terms which **OR** will be used.

`/word[s]` will search for *word* **OR** *words*

`/mari[oa]` will search for *mari* **OR** *maria* **OR** *mario*

Search for begin or end of an word or expression, use `\<` for start and `\>`
for end.

`/\<sta` search for words that starts with *sta*, will match the begining words
like *start*, *staying* etc.

`/ing\>` search for words ending with *ing*, will match the tail of words like
*studying*, *staying* etc.

`/\<word\>` search for *word*.

Search for words with a specific number of characters.

`/\<...\>` search for words with 3 letters

`/\<\d\d\d\d\>` search for 4 digits.

`/word\|verb` search for *word* **OR** *verb*, inclusive.

Search for repeated things:

`/ \{2}` look for two blank space in a roll.

`:%s#<[^>]\+>##g` erase all html tags keeping the content.


### "Escaped" characters or metacharacters


`.` : any character except new line

`\s` : whitespace character

`\S` : non-whitespace character

`\d` : digit

`\D` : non-digit

`\x` : hex digit

`\X` : non-hex digit

`\o` : octal digit

`\O` : non-octal digit

`\h` : head of word character (a,b,c...z,A,B,C...Z and _)

`\H` : non-head of word character

`\p` : printable character

`\P` : like \p, but excluding digits

`\w` : word character

`\W` : non-word character

`\a` : alphabetic character

`\A` : non-alphabetic character

`\l` : lowercase character

`\L` : non-lowercase character

`\u` : uppercase character

`\U` : non-uppercase character

