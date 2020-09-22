#task1
cat $1 | cut -d, -f1,2 | tr "," " " | sort -k1 | sort -k2 -n > output.txt

echo "Highest: "
cat $1 | cut -d, -f1,2,4 | tr "," " " | sort -k3 -n | tail -n 1
echo "Lowest: "
cat $1 | cut -d, -f1,2,4 | tr "," " " | sort -k3 -n | head -n 2 | tail -n 1

echo "Number of Top 10 Highest Earners Who are Female:"
cat $1 | cut -d, -f1,2,4 | tr "," " " | sort -k3 -n | tail -n 10 | grep -c "female"  

