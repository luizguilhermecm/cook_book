# Convert any character of portuguese to UTF8 code point
[UTF-8 table used as reference](http://www.utf8-chartable.de)

## snk

`ga` to start the engine :D

Recursion begin from bottom


```
nmap <leader>snkA7 :s/§/\\u00A7/e <CR><Esc>
nmap <leader>snkA8 :s/¨/\\u00A8/e <CR><Esc><leader>snkA7
nmap <leader>snkAA :s/ª/\\u00AA/e <CR><Esc><leader>snkA8
nmap <leader>snkAB :s/«/\\u00AB/e <CR><Esc><leader>snkAA
nmap <leader>snkAC :s/¬/\\u00AC/e <CR><Esc><leader>snkAB
nmap <leader>snkAE :s/®/\\u00AE/e <CR><Esc><leader>snkAC
nmap <leader>snkAF :s/¯/\\u00AF/e <CR><Esc><leader>snkAE
nmap <leader>snkB0 :s/°/\\u00B0/e <CR><Esc><leader>snkAF
nmap <leader>snkB1 :s/±/\\u00B1/e <CR><Esc><leader>snkB0
nmap <leader>snkB2 :s/²/\\u00B2/e <CR><Esc><leader>snkB1
nmap <leader>snkB3 :s/³/\\u00B3/e <CR><Esc><leader>snkB2
nmap <leader>snkB5 :s/µ/\\u00B5/e <CR><Esc><leader>snkB3
nmap <leader>snkB6 :s/¶/\\u00B6/e <CR><Esc><leader>snkB5
nmap <leader>snkB9 :s/¹/\\u00B9/e <CR><Esc><leader>snkB6
nmap <leader>snkBA :s/º/\\u00BA/e <CR><Esc><leader>snkB9
nmap <leader>snkBB :s/»/\\u00BB/e <CR><Esc><leader>snkBA
nmap <leader>snkBC :s/¼/\\u00BC/e <CR><Esc><leader>snkBB
nmap <leader>snkBD :s/½/\\u00BD/e <CR><Esc><leader>snkBC
nmap <leader>snkBE :s/¾/\\u00BE/e <CR><Esc><leader>snkBD
nmap <leader>snkC0 :s/À/\\u00C0/e <CR><Esc><leader>snkBE
nmap <leader>snkC1 :s/Á/\\u00C1/e <CR><Esc><leader>snkC0
nmap <leader>snkC2 :s/Â/\\u00C2/e <CR><Esc><leader>snkC1
nmap <leader>snkC3 :s/Ã/\\u00C3/e <CR><Esc><leader>snkC2
nmap <leader>snkC4 :s/Ä/\\u00C4/e <CR><Esc><leader>snkC3
nmap <leader>snkC5 :s/Å/\\u00C5/e <CR><Esc><leader>snkC4
nmap <leader>snkC6 :s/Æ/\\u00C6/e <CR><Esc><leader>snkC5
nmap <leader>snkC7 :s/Ç/\\u00C7/e <CR><Esc><leader>snkC6
nmap <leader>snkC8 :s/È/\\u00C8/e <CR><Esc><leader>snkC7
nmap <leader>snkC9 :s/É/\\u00C9/e <CR><Esc><leader>snkC8
nmap <leader>snkCA :s/Ê/\\u00CA/e <CR><Esc><leader>snkC9
nmap <leader>snkCB :s/Ë/\\u00CB/e <CR><Esc><leader>snkCA
nmap <leader>snkCC :s/Ì/\\u00CC/e <CR><Esc><leader>snkCB
nmap <leader>snkCD :s/Í/\\u00CD/e <CR><Esc><leader>snkCC
nmap <leader>snkCE :s/Î/\\u00CE/e <CR><Esc><leader>snkCD
nmap <leader>snkCF :s/Ï/\\u00CF/e <CR><Esc><leader>snkCE
nmap <leader>snkD0 :s/Ð/\\u00D0/e <CR><Esc><leader>snkCF
nmap <leader>snkD1 :s/Ñ/\\u00D1/e <CR><Esc><leader>snkD0
nmap <leader>snkD2 :s/Ò/\\u00D2/e <CR><Esc><leader>snkD1
nmap <leader>snkD3 :s/Ó/\\u00D3/e <CR><Esc><leader>snkD2
nmap <leader>snkD4 :s/Ô/\\u00D4/e <CR><Esc><leader>snkD3
nmap <leader>snkD5 :s/Õ/\\u00D5/e <CR><Esc><leader>snkD4
nmap <leader>snkD6 :s/Ö/\\u00D6/e <CR><Esc><leader>snkD5
nmap <leader>snkD7 :s/×/\\u00D7/e <CR><Esc><leader>snkD6
nmap <leader>snkD8 :s/Ø/\\u00D8/e <CR><Esc><leader>snkD7
nmap <leader>snkD9 :s/Ù/\\u00D9/e <CR><Esc><leader>snkD8
nmap <leader>snkDA :s/Ú/\\u00DA/e <CR><Esc><leader>snkD9
nmap <leader>snkDB :s/Û/\\u00DB/e <CR><Esc><leader>snkDA
nmap <leader>snkDC :s/Ü/\\u00DC/e <CR><Esc><leader>snkDB
nmap <leader>snkDD :s/Ý/\\u00DD/e <CR><Esc><leader>snkDC
nmap <leader>snkDE :s/Þ/\\u00DE/e <CR><Esc><leader>snkDD
nmap <leader>snkDF :s/ß/\\u00DF/e <CR><Esc><leader>snkDE
nmap <leader>snkE0 :s/à/\\u00E0/e <CR><Esc><leader>snkDF
nmap <leader>snkE1 :s/á/\\u00E1/e <CR><Esc><leader>snkE0
nmap <leader>snkE2 :s/â/\\u00E2/e <CR><Esc><leader>snkE1
nmap <leader>snkE3 :s/ã/\\u00E3/e <CR><Esc><leader>snkE2
nmap <leader>snkE4 :s/ä/\\u00E4/e <CR><Esc><leader>snkE3
nmap <leader>snkE5 :s/å/\\u00E5/e <CR><Esc><leader>snkE4
nmap <leader>snkE6 :s/æ/\\u00E6/e <CR><Esc><leader>snkE5
nmap <leader>snkE7 :s/ç/\\u00E7/e <CR><Esc><leader>snkE6
nmap <leader>snkE8 :s/è/\\u00E8/e <CR><Esc><leader>snkE7
nmap <leader>snkE9 :s/é/\\u00E9/e <CR><Esc><leader>snkE8
nmap <leader>snkEA :s/ê/\\u00EA/e <CR><Esc><leader>snkE9
nmap <leader>snkEB :s/ë/\\u00EB/e <CR><Esc><leader>snkEA
nmap <leader>snkEC :s/ì/\\u00EC/e <CR><Esc><leader>snkEB
nmap <leader>snkED :s/í/\\u00ED/e <CR><Esc><leader>snkEC
nmap <leader>snkEE :s/î/\\u00EE/e <CR><Esc><leader>snkED
nmap <leader>snkEF :s/ï/\\u00EF/e <CR><Esc><leader>snkEE
nmap <leader>snkF0 :s/ð/\\u00F0/e <CR><Esc><leader>snkEF
nmap <leader>snkF1 :s/ñ/\\u00F1/e <CR><Esc><leader>snkF0
nmap <leader>snkF2 :s/ò/\\u00F2/e <CR><Esc><leader>snkF1
nmap <leader>snkF3 :s/ó/\\u00F3/e <CR><Esc><leader>snkF2
nmap <leader>snkF4 :s/ô/\\u00F4/e <CR><Esc><leader>snkF3
nmap <leader>snkF5 :s/õ/\\u00F5/e <CR><Esc><leader>snkF4
nmap <leader>snkF6 :s/ö/\\u00F6/e <CR><Esc><leader>snkF5
nmap <leader>snkF7 :s/÷/\\u00F7/e <CR><Esc><leader>snkF6
nmap <leader>snkF8 :s/ø/\\u00F8/e <CR><Esc><leader>snkF7
nmap <leader>snkF9 :s/ù/\\u00F9/e <CR><Esc><leader>snkF8
nmap <leader>snkFA :s/ú/\\u00FA/e <CR><Esc><leader>snkF9
nmap <leader>snkFB :s/û/\\u00FB/e <CR><Esc><leader>snkFA
nmap <leader>snkFC :s/ü/\\u00FC/e <CR><Esc><leader>snkFB
nmap <leader>snkFD :s/ý/\\u00FD/e <CR><Esc><leader>snkFC
nmap <leader>snkFE :s/þ/\\u00FE/e <CR><Esc><leader>snkFD
nmap ga :s/\%u00FF/\\uÿ00FF/e <CR><Esc><leader>snkFE
```
