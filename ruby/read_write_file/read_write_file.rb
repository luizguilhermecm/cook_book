def append_prepend_file filename
    file = IO.read(filename)
    open(filename, 'w') { |f| f << "header" << file << "footer"}
end

def append_in_file filename
    open(filename, 'a') { |f| f << timestamp << text << "\n\n"}
end

def only_read_file filename
    file = IO.read(filename)
    puts file.class # => String
end

def read_lines filename
    file = IO.read(filename)
    puts file.class # => String

    file.each_line do |line|
        puts line.class # => String
    end
end

def list_files_of_dir
    list = Dir['./*']
    puts list.class # => Array
    puts list
    list.each do |item|
        puts item.class # => String
        file = IO.read(item)
    end
end

list_files_of_dir
#read_lines "./text.txt"
