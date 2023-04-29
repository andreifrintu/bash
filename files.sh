# This cheatsheet has most important commands for file control


## List files inside a dir >
ls 
# Optional parameters for ls
-a: Shows hidden files and directories that start with dot
-l: Long listing format including permissions, owner, group, file size, and modification time
-h: Used with the -l option to display file sizes in a human-readable format
-t: Sorts the files by modification time, with the most recently modified files listed first
-r: Reverses the order of the file listing
-S: Sorts the files by file size, with the largest files listed first
-u: Sorts the files by access time, with the most recently accessed files listed first

# Create directory & file >
touch $file_name 
mkdir $dir_name
# Create directories recursively >
mkdir -p $long_dir_structure
# Rename directory & file >
mv $file_name $new_file
mv $dir_name $new_dir
# Copy directory & file >
cp $file_name $new_file
cp $dir_name $new_dir
# Remove directory & file >
rm $file_name
rmdir $dir_name
rm -r $dir_name

# Change permissions of directory & file >
chmod $perm_code $file_name/$dir_name
# Change the owner of directory & file >
chown $owner $file_name/$dir_name
## Permission codes >
-777: _rwxrwxrwx
-755: _rwxr-xr-x
-700: _rwx------
-666: _rw-rw-rw-
-644: _rw-r--r--
-600: _rw-------

## Display content of a file >
# All content >
cat $file_name
# First n/10 lines of a file >
head [-n $number] $file_name
# Last n/10 lines of a file >
tail [-n $number] $file_name

# Number words in a file >
wc $file_name
# Compare 2 files >
diff $file_1 $file_2
# Determine file type >
file $file_name
# Search content inside a file / output >
grep [-r for more files] "$content"

## File links >
# Create hard-link >
ln $original_file $hard_link
# Create symbolic-link >
ln -s $original_file $symbolic_link
# Remove hard/symbolic-link >
rm $link_name
# Copy symbolic-link >
cp -P $symbolic_link $new_link
# List all links for a file >
ls -l $original_file
# Update links >
rm $symbolic_link
ln -s $new_file $symbolic_link
# Find broken link >
find -L $dir -type l


