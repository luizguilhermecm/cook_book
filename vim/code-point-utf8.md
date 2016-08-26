# Convert any character of portuguese to UTF8 code point

uses:

`:g/^/call CP8()`
`:2,19g/^/call CP8()`
`:19,$g/^/call CP8()`
`:call CP8()`
`:CP8` mapped `command! CP8 call CP8()`

```
function! CP8()
    silent! s/\%u00A7/\\u00A7/e
    silent! s/\%u00A8/\\u00A8/e
    silent! s/\%u00AA/\\u00AA/e
    silent! s/\%u00AB/\\u00AB/e
    silent! s/\%u00AC/\\u00AC/e
    silent! s/\%u00AE/\\u00AE/e
    silent! s/\%u00AF/\\u00AF/e
    silent! s/\%u00B0/\\u00B0/e
    silent! s/\%u00B1/\\u00B1/e
    silent! s/\%u00B2/\\u00B2/e
    silent! s/\%u00B3/\\u00B3/e
    silent! s/\%u00B5/\\u00B5/e
    silent! s/\%u00B6/\\u00B6/e
    silent! s/\%u00B9/\\u00B9/e
    silent! s/\%u00BA/\\u00BA/e
    silent! s/\%u00BB/\\u00BB/e
    silent! s/\%u00BC/\\u00BC/e
    silent! s/\%u00BD/\\u00BD/e
    silent! s/\%u00BE/\\u00BE/e
    silent! s/\%u00C0/\\u00C0/e
    silent! s/\%u00C1/\\u00C1/e
    silent! s/\%u00C2/\\u00C2/e
    silent! s/\%u00C3/\\u00C3/e
    silent! s/\%u00C4/\\u00C4/e
    silent! s/\%u00C5/\\u00C5/e
    silent! s/\%u00C6/\\u00C6/e
    silent! s/\%u00C7/\\u00C7/e
    silent! s/\%u00C8/\\u00C8/e
    silent! s/\%u00C9/\\u00C9/e
    silent! s/\%u00CA/\\u00CA/e
    silent! s/\%u00CB/\\u00CB/e
    silent! s/\%u00CC/\\u00CC/e
    silent! s/\%u00CD/\\u00CD/e
    silent! s/\%u00CE/\\u00CE/e
    silent! s/\%u00CF/\\u00CF/e
    silent! s/\%u00D0/\\u00D0/e
    silent! s/\%u00D1/\\u00D1/e
    silent! s/\%u00D2/\\u00D2/e
    silent! s/\%u00D3/\\u00D3/e
    silent! s/\%u00D4/\\u00D4/e
    silent! s/\%u00D5/\\u00D5/e
    silent! s/\%u00D6/\\u00D6/e
    silent! s/\%u00D7/\\u00D7/e
    silent! s/\%u00D8/\\u00D8/e
    silent! s/\%u00D9/\\u00D9/e
    silent! s/\%u00DA/\\u00DA/e
    silent! s/\%u00DB/\\u00DB/e
    silent! s/\%u00DC/\\u00DC/e
    silent! s/\%u00DD/\\u00DD/e
    silent! s/\%u00DE/\\u00DE/e
    silent! s/\%u00DF/\\u00DF/e
    silent! s/\%u00E0/\\u00E0/e
    silent! s/\%u00E1/\\u00E1/e
    silent! s/\%u00E2/\\u00E2/e
    silent! s/\%u00E3/\\u00E3/e
    silent! s/\%u00E4/\\u00E4/e
    silent! s/\%u00E5/\\u00E5/e
    silent! s/\%u00E6/\\u00E6/e
    silent! s/\%u00E7/\\u00E7/e
    silent! s/\%u00E8/\\u00E8/e
    silent! s/\%u00E9/\\u00E9/e
    silent! s/\%u00EA/\\u00EA/e
    silent! s/\%u00EB/\\u00EB/e
    silent! s/\%u00EC/\\u00EC/e
    silent! s/\%u00ED/\\u00ED/e
    silent! s/\%u00EE/\\u00EE/e
    silent! s/\%u00EF/\\u00EF/e
    silent! s/\%u00F0/\\u00F0/e
    silent! s/\%u00F1/\\u00F1/e
    silent! s/\%u00F2/\\u00F2/e
    silent! s/\%u00F3/\\u00F3/e
    silent! s/\%u00F4/\\u00F4/e
    silent! s/\%u00F5/\\u00F5/e
    silent! s/\%u00F6/\\u00F6/e
    silent! s/\%u00F7/\\u00F7/e
    silent! s/\%u00F8/\\u00F8/e
    silent! s/\%u00F9/\\u00F9/e
    silent! s/\%u00FA/\\u00FA/e
    silent! s/\%u00FB/\\u00FB/e
    silent! s/\%u00FC/\\u00FC/e
    silent! s/\%u00FD/\\u00FD/e
    silent! s/\%u00FE/\\u00FE/e
    silent! s/\%u00FF/\\u00FF/e
endfunction

command! CP8 call CP8()
```
