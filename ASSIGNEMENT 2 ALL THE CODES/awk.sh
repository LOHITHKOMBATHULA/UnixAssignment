
awk '{printf}' file1.txt
echo -e "\n"
awk '{printf $1, $3}' file1.txt
echo -e "\n"
awk '{ sum += $3 } END { print sum }' file1.txt
echo -e "\n"
awk '{ sum += $3 } END { print sum / NR }' file1.txt
echo -e "\n"
awk '{ print substr($1, 2, 3) }' file1.txt
echo -e "\n"
awk '{ print $NF }' file1.txt
echo -e "\n"
awk '{ if ($3 > 15000) { print "senior" } else { print "junior" } }' file1.txt
echo -e "\n"
awk 'function square(x) { return x*x } { print square($4) }' file1.txt
echo -e "\n"

