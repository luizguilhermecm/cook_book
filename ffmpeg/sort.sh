
# wma to mp3
ffmpeg -i music.wma -acodec libmp3lame -ab 128k music.mp3

# segue um comando para converter todas os videos de uma pasta para mp3, com velocidade 2x mais rápida e o dobro do volume
for FILE_NAME in *.mp4; do ffmpeg -i $FILE_NAME -vn -ar 44100 -ac 2 -filter:a "atempo=2.0,volume=2" -ab 128k -f mp3 $FILE_NAME.mp3; done;
