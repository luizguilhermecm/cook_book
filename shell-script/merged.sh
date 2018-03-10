
for f in * ; do echo ${f%.*} ; done


mkdir ax1 ; for f in * ; do  extfile="" ; if [[ "$f" == *"."* ]]; then extfile=.$(echo "$f" | awk -F . '{print $NF}' ); fi ; filename=$(echo ${f%.*} | sed  -E -e 's/[^[:alnum:]]/_/g' -e 's/_{2,}/_/g'); cp "$f" ax1/"$filename"_H_$(openssl rand -hex 3)"$extfile" ; done ; cd ax1
for f in * ; do  extfile="" ; if [[ "$f" == *"."* ]]; then extfile=.$(echo "$f" | awk -F . '{print $NF}' ); fi ; filename=$(echo ${f%.*} | sed  -E -e 's/[^[:alnum:]]/_/g' -e 's/_{2,}/_/g'); echo "$filename""_H_$(openssl rand -hex 3)""$extfile" ; done 


 
if [[ ${#f} == *"."* ]]; then extfile=.$(echo "$f" | awk -F . '{print $NF}' ); fi 

