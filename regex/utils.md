# Some regular expression

https://guides.github.com/features/mastering-markdown/#syntax

I have to understand how the follow regex is replacing 2 or more spaces with 1.

```
:g/^    /s//XYZZYPARA/g
:g/ \+/s// /g
:g/^XYZZYPARA/s//    /g
```

all of this: http://stackoverflow.com/questions/3860532/vim-regex-replace-multiple-consecutive-spaces-with-only-one-space


http://vim.wikia.com/wiki/Remove_unwanted_empty_lines
