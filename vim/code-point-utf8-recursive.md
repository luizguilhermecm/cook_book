# Convert any character of portuguese to UTF8 code point
[UTF-8 table used as reference](http://www.utf8-chartable.de)

## snk

`<leader>snk` to start the engine :D


First is the last of the list and will end at first

```
nmap <leader>snkA7 :s/\%u00A7/\\u00A7/e <CR>
nmap <leader>snkA8 :s/\%u00A8/\\u00A8/e <CR><Esc><leader>snkA7
nmap <leader>snkAA :s/\%u00AA/\\u00AA/e <CR><Esc><leader>snkA8
nmap <leader>snkAB :s/\%u00AB/\\u00AB/e <CR><Esc><leader>snkAA
nmap <leader>snkAC :s/\%u00AC/\\u00AC/e <CR><Esc><leader>snkAB
nmap <leader>snkAE :s/\%u00AE/\\u00AE/e <CR><Esc><leader>snkAC
nmap <leader>snkAF :s/\%u00AF/\\u00AF/e <CR><Esc><leader>snkAE
nmap <leader>snkB0 :s/\%u00B0/\\u00B0/e <CR><Esc><leader>snkAF
nmap <leader>snkB1 :s/\%u00B1/\\u00B1/e <CR><Esc><leader>snkB0
nmap <leader>snkB2 :s/\%u00B2/\\u00B2/e <CR><Esc><leader>snkB1
nmap <leader>snkB3 :s/\%u00B3/\\u00B3/e <CR><Esc><leader>snkB2
nmap <leader>snkB5 :s/\%u00B5/\\u00B5/e <CR><Esc><leader>snkB3
nmap <leader>snkB6 :s/\%u00B6/\\u00B6/e <CR><Esc><leader>snkB5
nmap <leader>snkB9 :s/\%u00B9/\\u00B9/e <CR><Esc><leader>snkB6
nmap <leader>snkBA :s/\%u00BA/\\u00BA/e <CR><Esc><leader>snkB9
nmap <leader>snkBB :s/\%u00BB/\\u00BB/e <CR><Esc><leader>snkBA
nmap <leader>snkBC :s/\%u00BC/\\u00BC/e <CR><Esc><leader>snkBB
nmap <leader>snkBD :s/\%u00BD/\\u00BD/e <CR><Esc><leader>snkBC
nmap <leader>snkBE :s/\%u00BE/\\u00BE/e <CR><Esc><leader>snkBD
nmap <leader>snkC0 :s/\%u00C0/\\u00C0/e <CR><Esc><leader>snkBE
nmap <leader>snkC1 :s/\%u00C1/\\u00C1/e <CR><Esc><leader>snkC0
nmap <leader>snkC2 :s/\%u00C2/\\u00C2/e <CR><Esc><leader>snkC1
nmap <leader>snkC3 :s/\%u00C3/\\u00C3/e <CR><Esc><leader>snkC2
nmap <leader>snkC4 :s/\%u00C4/\\u00C4/e <CR><Esc><leader>snkC3
nmap <leader>snkC5 :s/\%u00C5/\\u00C5/e <CR><Esc><leader>snkC4
nmap <leader>snkC6 :s/\%u00C6/\\u00C6/e <CR><Esc><leader>snkC5
nmap <leader>snkC7 :s/\%u00C7/\\u00C7/e <CR><Esc><leader>snkC6
nmap <leader>snkC8 :s/\%u00C8/\\u00C8/e <CR><Esc><leader>snkC7
nmap <leader>snkC9 :s/\%u00C9/\\u00C9/e <CR><Esc><leader>snkC8
nmap <leader>snkCA :s/\%u00CA/\\u00CA/e <CR><Esc><leader>snkC9
nmap <leader>snkCB :s/\%u00CB/\\u00CB/e <CR><Esc><leader>snkCA
nmap <leader>snkCC :s/\%u00CC/\\u00CC/e <CR><Esc><leader>snkCB
nmap <leader>snkCD :s/\%u00CD/\\u00CD/e <CR><Esc><leader>snkCC
nmap <leader>snkCE :s/\%u00CE/\\u00CE/e <CR><Esc><leader>snkCD
nmap <leader>snkCF :s/\%u00CF/\\u00CF/e <CR><Esc><leader>snkCE
nmap <leader>snkD0 :s/\%u00D0/\\u00D0/e <CR><Esc><leader>snkCF
nmap <leader>snkD1 :s/\%u00D1/\\u00D1/e <CR><Esc><leader>snkD0
nmap <leader>snkD2 :s/\%u00D2/\\u00D2/e <CR><Esc><leader>snkD1
nmap <leader>snkD3 :s/\%u00D3/\\u00D3/e <CR><Esc><leader>snkD2
nmap <leader>snkD4 :s/\%u00D4/\\u00D4/e <CR><Esc><leader>snkD3
nmap <leader>snkD5 :s/\%u00D5/\\u00D5/e <CR><Esc><leader>snkD4
nmap <leader>snkD6 :s/\%u00D6/\\u00D6/e <CR><Esc><leader>snkD5
nmap <leader>snkD7 :s/\%u00D7/\\u00D7/e <CR><Esc><leader>snkD6
nmap <leader>snkD8 :s/\%u00D8/\\u00D8/e <CR><Esc><leader>snkD7
nmap <leader>snkD9 :s/\%u00D9/\\u00D9/e <CR><Esc><leader>snkD8
nmap <leader>snkDA :s/\%u00DA/\\u00DA/e <CR><Esc><leader>snkD9
nmap <leader>snkDB :s/\%u00DB/\\u00DB/e <CR><Esc><leader>snkDA
nmap <leader>snkDC :s/\%u00DC/\\u00DC/e <CR><Esc><leader>snkDB
nmap <leader>snkDD :s/\%u00DD/\\u00DD/e <CR><Esc><leader>snkDC
nmap <leader>snkDE :s/\%u00DE/\\u00DE/e <CR><Esc><leader>snkDD
nmap <leader>snkDF :s/\%u00DF/\\u00DF/e <CR><Esc><leader>snkDE
nmap <leader>snkE0 :s/\%u00E0/\\u00E0/e <CR><Esc><leader>snkDF
nmap <leader>snkE1 :s/\%u00E1/\\u00E1/e <CR><Esc><leader>snkE0
nmap <leader>snkE2 :s/\%u00E2/\\u00E2/e <CR><Esc><leader>snkE1
nmap <leader>snkE3 :s/\%u00E3/\\u00E3/e <CR><Esc><leader>snkE2
nmap <leader>snkE4 :s/\%u00E4/\\u00E4/e <CR><Esc><leader>snkE3
nmap <leader>snkE5 :s/\%u00E5/\\u00E5/e <CR><Esc><leader>snkE4
nmap <leader>snkE6 :s/\%u00E6/\\u00E6/e <CR><Esc><leader>snkE5
nmap <leader>snkE7 :s/\%u00E7/\\u00E7/e <CR><Esc><leader>snkE6
nmap <leader>snkE8 :s/\%u00E8/\\u00E8/e <CR><Esc><leader>snkE7
nmap <leader>snkE9 :s/\%u00E9/\\u00E9/e <CR><Esc><leader>snkE8
nmap <leader>snkEA :s/\%u00EA/\\u00EA/e <CR><Esc><leader>snkE9
nmap <leader>snkEB :s/\%u00EB/\\u00EB/e <CR><Esc><leader>snkEA
nmap <leader>snkEC :s/\%u00EC/\\u00EC/e <CR><Esc><leader>snkEB
nmap <leader>snkED :s/\%u00ED/\\u00ED/e <CR><Esc><leader>snkEC
nmap <leader>snkEE :s/\%u00EE/\\u00EE/e <CR><Esc><leader>snkED
nmap <leader>snkEF :s/\%u00EF/\\u00EF/e <CR><Esc><leader>snkEE
nmap <leader>snkF0 :s/\%u00F0/\\u00F0/e <CR><Esc><leader>snkEF
nmap <leader>snkF1 :s/\%u00F1/\\u00F1/e <CR><Esc><leader>snkF0
nmap <leader>snkF2 :s/\%u00F2/\\u00F2/e <CR><Esc><leader>snkF1
nmap <leader>snkF3 :s/\%u00F3/\\u00F3/e <CR><Esc><leader>snkF2
nmap <leader>snkF4 :s/\%u00F4/\\u00F4/e <CR><Esc><leader>snkF3
nmap <leader>snkF5 :s/\%u00F5/\\u00F5/e <CR><Esc><leader>snkF4
nmap <leader>snkF6 :s/\%u00F6/\\u00F6/e <CR><Esc><leader>snkF5
nmap <leader>snkF7 :s/\%u00F7/\\u00F7/e <CR><Esc><leader>snkF6
nmap <leader>snkF8 :s/\%u00F8/\\u00F8/e <CR><Esc><leader>snkF7
nmap <leader>snkF9 :s/\%u00F9/\\u00F9/e <CR><Esc><leader>snkF8
nmap <leader>snkFA :s/\%u00FA/\\u00FA/e <CR><Esc><leader>snkF9
nmap <leader>snkFB :s/\%u00FB/\\u00FB/e <CR><Esc><leader>snkFA
nmap <leader>snkFC :s/\%u00FC/\\u00FC/e <CR><Esc><leader>snkFB
nmap <leader>snkFD :s/\%u00FD/\\u00FD/e <CR><Esc><leader>snkFC
nmap <leader>snkFE :s/\%u00FE/\\u00FE/e <CR><Esc><leader>snkFD
nmap <leader>snk :s/\%u00FF/\\u00FF/e <CR><Esc><leader>snkFE
```
