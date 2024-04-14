find file1.txt file2.txt newfile | cpio -o > archive.cpio
echo -e "\n"
cpio -i < archive.cpio
echo -e "\n"
cpio -t < archive.cpio
echo -e "\n"
find file1.txt file2.txt newfile | cpio -o -H odc > archive.cpio
echo -e "\n"
cpio -o -F archive_file1.cpio < file1.txt
echo -e "\n"
# Create a CPIO archive with verbose output
find file1.txt file2.txt newfile | cpio -vo > archive.cpio
echo -e "\n"
cpio -i -d < archive.cpio
echo -e "\n"
cpio -i -m < archive.cpio
echo -e "\n"
