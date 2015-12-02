# Output one image every second, named out1.png, out2.png, out3.png, etc.
ffmpeg -i input.flv -vf fps=1 out%d.png

#Output one image every minute, named img001.jpg, img002.jpg, img003.jpg, etc. 
#The %03d dictates that the ordinal number of each output image will be 
#formatted using 3 digits.
ffmpeg -i myvideo.avi -vf fps=1/60 img%03d.jpg


#Output one image every ten minutes:
ffmpeg -i test.flv -vf fps=1/600 thumb%04d.bmp

