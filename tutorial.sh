#task1
cat $1 | cut -d, -f1,2 | tr "," " " | sort -k1 | sort -k2 -n > output.txt

echo "Highest: "
cat $1 | sort -k4n | cut -d, -f1,2,4 | tail -n 1
echo "Lowest: "
cat $1 | sort -k4n | cut -d, -f1,2,4 | head -n 1 
echo "10 Highest Earners Who are Female"
cat $1 | sort -k4n | tail -n 10
