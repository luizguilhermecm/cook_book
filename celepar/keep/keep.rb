#!/usr/bin/env ruby

text = ARGV.first

now = Time.new.strftime("%d-%m-%Y : %H:%M:%S").to_s
todo = "[" + now  + "] [Celepar] " + text + "\n\n"

file = "/home/lgcmartins/Documentos/lgcmartins/__keep/_keep-log.txt"

if text == "-cat"
    puts File.read(file)
else 
    open(file, 'a'){ |f|
        f <<  todo 
    }
end
