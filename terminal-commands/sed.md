# sed

## Remove all but letter

Using regex to get the job done;

`$ sed 's/[^a-zA-Z]/_/' input_file`

That will replace any character but letters for an **underscore**

`for i in {1..10}; do echo $(rand 30 | sed -e 's/[^a-z]/_/g') ; done`



Insert text at line specified (line 2 in the example)

`gsed -i '2i echo $0\' file`


***

delete line matching *^public class*

`sed '/^public class/ d' FruicaoFeriasMB.java`

***

delete line with attribute

`sed -E '/(public|protected|private).*[@;$]/ d' FruicaoFeriasMB.java`


***

delete public method keyword and underscore name and return type

`sed -E 's/(public|protected|private) ([a-z]*) ([a-z]*)/\2_\3/' FruicaoFeriasMB.java`

```
sed '/^public class/ d' FruicaoFeriasMB.java
sed -E '/(public|protected|private).*[@;$]/ d'
sed -E 's/(public|protected|private) ([a-zA-Z0-9]*) ([a-zA-Z0-9]*).*/\3_\2_FruicaoFeriasMB/' > FruicaoFeriasMBdd.java
```

***

```
for f in *.java; do sed '1,/^public class/ d' $f | sed -E
'/(public|protected|private).*[@;$]/ d' | sed -E 's/(public|protected|private)
([a-zA-Z0-9]*) ([a-zA-Z0-9]*)/\3_\2_'$(basename $f)'/' | sed '/^}/ d' > _$f;
done
```
