## FFMPEG learning process
#
## Simple usage
#
# The very simplest usase of ffmpeg would be

ffmpeg -i imput_video.avi output_video.mp4

# Which will convert a MP4 video to AVI.

## Codecs
#
# FFMPEG gives support to a many codecs and to see the availables with;

ffmpeg -codecs

# This command will show a list of codecs and what which one can do, using the 
# follow list of capabilities;
#
# Codecs:
#  D..... = Decoding supported
#  .E.... = Encoding supported
#  ..V... = Video codec
#  ..A... = Audio codec
#  ..S... = Subtitle codec
#  ...I.. = Intra frame-only codec
#  ....L. = Lossy compression
#  .....S = Lossless compression
#
# So, taking the codec h264 as an example:
#
# DEV.LS    h264    H.264 / AVC / MPEG-4 AVC / MPEG-4 part 10 
#                   (decoders: h264 h264_vda ) (encoders: libx264 libx264rgb )
#
# The 'DEV.LS' tell what the coded can do, in this case 
#   D : Decode 
#   E : Encode 
#   V : Video Codec 
#   L : Lossy Compression 
#   S : Lossless compression
# The 'h264' is the name of codec followed by an description.
#
## Using codecs with FFMPEG
#
# The command sintax to use an specific codec is:
#
# ffmpeg -i [INPUTFILE] 
#   -c:v [VIDEOCODEC] [CODEC-OPTIONS] 
#   -c:a [AUDIOCODEC] [CODEC-OPTIONS] 
#   [OUTPUTFILE]
#
# An example using only a video codec could be:

ffmpeg -i imput_video.flv -c:v libx264 output.mp4

