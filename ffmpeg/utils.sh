# Output one image every second, named out1.png, out2.png, out3.png, etc.
ffmpeg -i input.flv -vf fps=1 out%d.png

#Output one image every minute, named img001.jpg, img002.jpg, img003.jpg, etc. 
#The %03d dictates that the ordinal number of each output image will be 
#formatted using 3 digits.
ffmpeg -i myvideo.avi -vf fps=1/60 img%03d.jpg


#Output one image every ten minutes:
ffmpeg -i test.flv -vf fps=1/600 thumb%04d.bmp

#get duration of input 
# PS: the cut command has a param -f 5, it can be 4 .
ffmpeg -i 14/14_13-54-12_GOPR0132_gopro_25fps.MP4  2>&1 | grep 'Duration' | cut -d ' ' -f 5 | sed -E s/,// >> durations

