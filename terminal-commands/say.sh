#
# Speak a string or file
#
# 
#   -f file, --input-file=file
#        Specify a file to be spoken. If file is - or neither this parameter
#        nor a message is specified, read from standard input.
#
#   -v voice, --voice=voice
#        Specify the voice to be used. Default is the voice selected in System
#        Preferences. 
#        To obtain a list of voices installed in the system, specify '?' as the
#        voice name.
#
#   -o out.aiff, --output-file=file
#         Specify the path for an audio file to be written. AIFF is the default and should be supported for
#         most voices, but some voices support many more file formats.
#
#   -i, --interactive, --interactive=markup
#          Print the text line by line during synthesis, highlighting words as they are spoken. Markup can
#          be one of
#
#   -r rate, --rate=rate
#          Speech rate to be used, in words per minute.
#
#

say -v Thomas -o 'je suis rouge.m4a' 'Je suis rouge'

# it will print line by line while reads, highlights word by word.
say -v Alex -i 'text to be read'

# will read the file.txt, it will print line by line while reads, 
# highlights word by word.
say -v Alex -i -f file.txt 
