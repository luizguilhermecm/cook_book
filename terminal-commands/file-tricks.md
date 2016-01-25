# split file in 500 lines, all new files named as 'prefixaa', 'prefixab', ...
split -l 500 my_file.txt prefix

# prepend text to file
echo "text" | cat - yourfile > /tmp/out && mv /tmp/out yourfile


# prepend text to file with for
for f in ./files/*; do echo "begin;" | cat - "$f" > /tmp/out && mv /tmp/out "$f" ; done

# append with for
for f in ./files/*; do echo "commit;" >> "$f" ; done


