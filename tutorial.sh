#Part1--selects gender and years experience
cat $1 | cut -d, -f1,2 | tr "," " " | sort -k1 | sort -k2 -n > output.txt

#Part2--finds highest and lowest earners
echo "Highest: "
cat $1 | cut -d, -f1,2,4 | tr "," " " | sort -k3 -n | tail -n 1
echo "Lowest: "
cat $1 | cut -d, -f1,2,4 | tr "," " " | sort -k3 -n | head -n 2 | tail -n 1

echo "Number of Top 10 Highest Earners Who are Female:"
cat $1 | cut -d, -f1,2,4 | tr "," " " | sort -k3 -n | tail -n 10 | grep -c "female"  

#Part3--finds average wage for 12 and 16 years of school, then subtracts to get the difference
college=$(cat $1 | cut -d, -f3,4 | egrep "^16" | cut -d, -f2 | awk -F';' '{sum+=$1; ++n} END {print sum/NR}')

highschool=$(cat $1 | cut -d, -f3,4 | egrep "^12" | cut -d, -f2 | awk -F';' '{sum+=$1; ++n} END {print sum/NR}')

echo "$college - $highschool" | bc
