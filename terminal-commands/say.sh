
# Speak a string or file

# 
#   -f file, --input-file=file
#        Specify a file to be spoken. If file is - or neither this parameter nor 
#        a message is specified, read from standard input.
#   -v voice, --voice=voice
#        Specify the voice to be used. Default is the voice selected in System Preferences. To obtain a
#        list of voices installed in the system, specify '?' as the voice name.
#
#   -o out.aiff, --output-file=file
#         Specify the path for an audio file to be written. AIFF is the default and should be supported for
#         most voices, but some voices support many more file formats.


say -v Thomas -o 'je suis rouge.m4a' 'Je suis rouge'

