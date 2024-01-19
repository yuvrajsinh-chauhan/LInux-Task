cd
mkdir testdir
cd testdir
touch file1.txt
touch file2.txt
touch file3.txt
printf "File 1\n Line 2\n Line 3\n Line 4\n Line 5\n" >> file1.txt
printf "File 2\n Line 2\n Line 3\n Line 4\n Line 5\n Line 6\n Line 7\n Line 8\n Line 9\n Line 10\n" >> file2.txt
printf "File 3\n Line 2\n Line 3\n Line 4\n Line 5\n Line 6\n Line 7\n Line 8\n Line 9\n Line 10\n Line 11\n Line 12\n Line 13\n Line 14\n Line 15\n" >> file3.txt
cat file1.txt
cat file2.txt
cat file3.txt
chmod 444 file2.txt
chmod g=r file3.txt
cat file2.txt file3.txt >> file1.txt
echo "Do you want to delete file2 and file3? (y/n)"
read input
if [ $input = "y" ]; then
	rm file2.txt file3.txt
	echo "file2 and file3 are deleted"
fi
cat file1.txt
