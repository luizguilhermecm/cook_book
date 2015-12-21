Buffers
=======

#### Introduction

Summary:
* A buffer is the in-memory text of a file.
* A window is a viewport on a buffer.
* A tab page is a collection of windows.

#### Buffer Indicators

Indicators (chars in the same column are mutually exclusive):

```
u         an unlisted buffer (only displayed when [!] is used)
 %	      the buffer in the current window
 #	      the alternate buffer for ":e #" and CTRL-^
  a	      an active buffer: it is loaded and visible
  h	      a hidden buffer: It is loaded, but currently not displayed in a window |hidden-buffer|
   -	    a buffer with 'modifiable' off
   =	    a readonly buffer
    +	    a modified buffer
    x     a buffer with read errors
```

#### Handling Buffers

| cmd             | function                  |
| -----           | ---------                 |
| `:ls`           | Show/list all buffers     |
| `:buffers`      | Show/list all buffers     |
| `:files`        | Show/list all buffers     |
| `:ls`           | Show/list all buffers     |
| `:ball`         | Edit all buffers          |
| `:unhide`       | Edit all loaded buffers   |
| `:[N]bnext`     | To Nth next buffer        |
| `:[N]bNext`     | To Nth previous buffer    |
| `:[N]bprevious` | To Nth previous buffer    |
| `:[N]b`         | To buffer with id equal N |
| `:b[N]`         | To buffer with id equal N |

* As in `:b [N]`, the `[N]` when shown can be on any side, like `:bnext [N]`
