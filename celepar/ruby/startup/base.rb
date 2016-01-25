#!/usr/bin/env ruby

text = "    lgcmartins   "
now = Time.new.strftime("%d-%m-%Y : %H:%M:%S").to_s
todo = "[" + now  + "] [Celepar] " + text + "\n\n"

file = "/home/lgcmartins/__teste.txt"

open(file, 'a'){ |f|
    f <<  todo 
}
