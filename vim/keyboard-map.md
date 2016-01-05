Vim Basic
---------

#### Acronyms and Terms

**EOF** End Of Line.

**BOL** Begin Of Line.

**BOF** Begin Of File.

**EOF** End Of File.

**Soft** When **soft BOL**, means the first non-blank character of line.

#### Keyboard Map

| key                                                      | function                            |
| -------------------------------------------------------- | ----------------------------------- |
| `~`                                                      | toggle case of letter under cursor.
| `` `                                                     | go to mark.
| `!` | external filter **???**.|
| `@` | play macro.|
| `#` | search the word under cursor and go to previous hit.|
| `$` | go to EOL.|
| `%` | go to match `( ), [ ], { }` **PS1**.|
| `^` | soft BOL.|
| `&` | repeat `:s` **???**.|
| `*` | search the word under cursor and go to next hit.|
| `(` | go to begin of sentence.|
| `)` | go to begin of next sentence.|
| `_` | soft BOL.|
| `-` | go to previous line.|
| `+` | go to next line.|
| `=` | auto format.|
| `{` | go to begin of paragraph.|
| `}` | go to end of paragraph.|
| `[` | misc **???**.|
| `]` | misc **???**.|
| `\` | *not used*.|
| `|` | BOL.|
| `;` | *re-mapped*.|
| `:` | *cmd line*.|
| `'` | goto mk. BOL **???**.|
| `"` | reg. spec. **???**.|
| `/` | find.|
| `?` | find (reverse).|
| `.` | repeat command.|
| `,` | reverse t/T/f/F **???**.|
| `<` | un-indente.|
| `>` | indent.|
| `a` | append.|
| `A` | append at EOL.|
| `b` | previous word.|
| `B` | previous WORD.|
| `c` | change.|
| `C` | change to EOL.|
| `d` | delete.|
| `D` | delete to EOL.|
| `e` | goto end of word.|
| `E` | goto end of WORD.|
| `f` | find char.|
| `F` | "back" find char.|
| `g` | *extra commands*.|
| `G` | goto EOF.|
| `h` | *navegation*.|
| `H` | goto top of screen.|
| `i` | *insert mode*.|
| `I` | *insert mode* at BOL.|
| `j` | *navegation*.|
| `J` | join lines.|
| `k` | *navegation*.|
| `K` | *help*.|
| `l` | *navegation*.|
| `L` | goto bottom of screen.|
| `m` | set mark.|
| `M` | goto middle of screen.|
| `n` | next (find).|
| `N` | previous (find).|
| `o` | new line below.|
| `O` | new line above.|
| `p` | paste after.|
| `P` | paste before.|
| `q` | record macro.|
| `Q` | ex mode **???**.|
| `r` | replace char.|
| `R` | *replace mode*.|
| `s` | substitute char.|
| `S` | substitute line.|
| `t` | **till**.|
| `T` | **back till**.|
| `u` | undo.|
| `U` | undo line.|
| `v` | *visual mode*.|
| `V` | visual lines.|
| `w` | next word.|
| `W` | next WORD.|
| `x` | delete char.|
| `X` | backspace.|
| `y` | yank.|
| `Y` | yank line.|
| `z` | *extra cmds*.|
| `Z` | quit.|

#### Post Scriptum

`%` go to match `( ), [ ], { }`, this key has 4 behaviors:

1. When pressed in a text inside of `( ), [ ], { }`, the cursor will jump to the
openning `(, [, {`.
2. When pressed on the openning `(, [, {` the cursor will jump to the closures.
3. When pressed on the closures it will jump to the openers.
4. When pressed over text which isn't inside any of them, it will do nothing.
