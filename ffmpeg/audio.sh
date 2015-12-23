
# Audio m4a to mp3
ffmpeg -i imput.m4a -acodec libmp3lame -ab 128k output.mp3


# all m4a of a dir to a new dir in mp3
for f in *\ *; do mv "$f" "${f// /_}"; done
mkdir mp3; for FILE_NAME in *.m4a; do ffmpeg -i $FILE_NAME  -acodec libmp3lame -ab 128k mp3/"${FILE_NAME/%m4a/mp3}"; done;


# increase volume in 50%
ffmpeg -i input.wav -af "volume=1.5" output.wav

# decrease volume to 50%
ffmpeg -i input.wav -af "volume=0.5" output.wav
