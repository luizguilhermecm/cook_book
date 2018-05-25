#BEGIN
out=""
for d in *; do
    if [ -d $d ]; then
        nb=$(find $d -type f | wc -l | tr -d '[[:blank:]]')
        out=${out}$nb" | "$d"\n"
    fi;
done
echo $out | pbcopy ; pbpaste
#END
