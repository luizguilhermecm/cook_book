Audio
-----


#### Converting any to MP3

Audio *.xxx* to *.mp3*.

```
# eg: m4a to mp3
ffmpeg -i imput.m4a -acodec libmp3lame -ab 128k output.mp3

# eg: opus to mp3
ffmpeg -i imput.opus -acodec libmp3lame -ab 128k output.mp3
```


All _..m4a_ of a dir to a new dir in mp3

```
for f in *\ *; do mv "$f" "${f// /_}"; done mkdir mp3; for FILE_NAME in *.m4a; do ffmpeg -i $FILE_NAME  -acodec libmp3lame -ab 128k mp3/"${FILE_NAME/%m4a/mp3}"; done;
```

#### Extract

Extract audio from video

```
ffmpeg -i input-video.avi -vn -acodec copy output-audio.aac
```

#### Volume

Increase volume in 50%
```
ffmpeg -i input.wav -af "volume=1.5" output.wav
```

Decrease volume to 50%
```
ffmpeg -i input.wav -af "volume=0.5" output.wav
```

Acelera/desacelera audio
```
ffmpeg -i audio.mp3 -filter:a atempo=1.5 -vn output3.mp3
```

Audio - flac to mp3
```
(for FILE in *.flac ; do ffmpeg -i "$FILE" -f mp3 -ab 192000 "`basename "$FILE" .flac`.mp3" || break; done)
```

### trim audio or video (same thing)

The follow command will receive two parameters and return an audio trimmed.

The parameters receives numbers of seconds:

`-ss seconds` where will be made a cut at left side of the timeline

`-t seconds` duration in seconds of the trimmed audio.

Using the follow example, assuming the imput audio with duration of 3 minutes.
The return trimmed audio will trash the first 13 seconds and will have 94
seconds of duration.

```
ffmpeg -i brexit-song.mp3 -ss 13 -t 94 -acodec copy trim4.mp3
```


# Converting an audio to wav.
```
ffmpeg -i input -acodec pcm_s32le output.wav
```

