file information

`file */**/** >> file.out`

* screenshots

`grep -h "750 x 1334" file.out | sed -E "s/:[[:blank:]]+.*//g"`
`grep -h "1334 x 750" file.out | sed -E "s/:[[:blank:]]+.*//g"`



mkdir screenshots

grep -h "750 x 1334" file.out | sed -E "s/:[[:blank:]]+.*//g" | while read data; do
mv "$data" ./screenshots
done

grep -h "1334 x 750" file.out | sed -E "s/:[[:blank:]]+.*//g" | while read data; do
mv "$data" ./screenshots
done


grep -h "QuickTime" file.out | sed -E "s/:[[:blank:]]+.*//g" | grep "MOV" | sed -E "s/^.*://g"

mkdir movies
grep -h "QuickTime" file.out | sed -E "s/:[[:blank:]]+.*//g" | grep "MOV" | sed -E "s/^.*://g" | while read data; do
mv "$data" ./movies
done



grep -h "iPhone" file.out | sed -E "s/:[[:blank:]]+.*//g"

mkdir images
grep -h "iPhone" file.out | sed -E "s/:[[:blank:]]+.*//g"  | while read data; do
mv "$data" ./images
done

