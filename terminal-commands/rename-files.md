using rename on mac
-------------

`-z, --sanitize` : troca espaço e caracteres de controle por '_'

`rename -z --lower-case * ` : sanitize all names and put then on lower-case.

`rename 's/^[^[A-Za-z]*]*(.*)/$1/g' *` : rename files where name starts with
number removing then.

```
rename -z --lower-case * ; rename 's/^[^[A-Za-z]*]*(.*)/$1/g' *
```

ubuntu at vm
------------

replace blank space with underscore
```
for file in *; do mv "$file" `echo $file | tr ' ' '_'` ; done
```
