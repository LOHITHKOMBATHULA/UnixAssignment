sed 's/s01/01/' file1.txt
echo -e "\n"
sed 's/25/21/g' file1.txt
echo -e "\n"
sed '2d' file1.txt
echo -e "\n"
sed '$d' file1.txt
echo -e "\n"
sed '1,4d' file1.txt
echo -e "\n"
sed '4,$d' file1.txt
echo -e "\n"
sed '/22/d' file1.txt
echo -e "\n"

