Video
=====

Duplicar audio channel, used when one side is mute
```
ffmpeg -i input.mp4 -vcodec copy -acodec libfaac -ab 220k -ar 48000 -ac 1 output.mp4
```

flv para mp4
```
ffmpeg -i input.flv -c:v libx264 -crf 23 -c:a libfaac -q:a 100 output.mp4
```

```
for f in *\ *; do mv "$f" "${f// /_}"; done
mkdir mp4; for FILE_NAME in *.flv; do ffmpeg -i $FILE_NAME -c:v libx264 -crf 23 -c:a libfaac -q:a 100 mp4/"${FILE_NAME/%flv/mp4}"; done;
```

```
ffmpeg -i Aula_01_parte_03_-_Contabilidade_Geral_e_Avançada_-_Silvio_Sande.mp4 -vcodec copy -acodec libfaac -ab 220k -ar 48000 -ac 1 output.mp4
```

filesize (in MB) = (bitrate in Mbit/s / 8) * (video length in seconds)

# dont works
#ffmpeg -i input_file.avi -codec:v libx264 -profile: high -preset slow -b:v 500k -maxrate 500k -bufsize 1000k -vf scale=-1:480 -threads 0 -codec:a libfdk_aac -b:a 128k output_file.mp4

