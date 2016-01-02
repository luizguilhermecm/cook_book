Shell Script Used In Services
=============================

#### File name and appending a new extension

```
ffmpeg -i "$@" -vn -acodec copy "$@.aac"
```
