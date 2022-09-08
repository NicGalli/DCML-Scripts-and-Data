 #!/bin/bash
top -b -n 1 | \
sed '7,$d' | \
sed 's/top - //;s/ up.*average: /,/;s/ //g' |\
tr -d '\n' | \
sed 's/used\./used,/' | \
sed 's/[:]/,/g' | \
sed 's/[,]/:/' | \
sed 's/[,]/:/' | \
sed 's/[%()/]//g' | \
sed 's/[a-zA-Z]//g' >> top_monitoring6.csv
echo '' >> top_monitoring6.csv
