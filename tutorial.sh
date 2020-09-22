#task1
cat $1 | cut -d, -f1,2 | tr "," " " | sort -k1 | sort -k2 > output.txt
