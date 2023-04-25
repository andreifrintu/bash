# This cheatsheet has most important commands for archives


# Create TAR archive >
tar -cvf $archive_name.tar $dir_name
# Extract TAR archive >
tar -xvf $archive_name.tar
# List content of TAR archive >
tar -tvf $archive_name.tar

# Create ZIP archive >
zip -r $archive_name.zip $dir_name
# Extract ZIP archive >
unzip $archive_name.zip
# List content of ZIP archive >
unzip -l $archive_name.zip

# Compress a file (gzip & bzip2 & xz) >
gzip $file_name
bzip2 $file_name
xz $file_name 
# Decompress a file (gzip & bzip2 & xz) >
gzip -d $file_name.gz // gunzip $file_name.gz
bzip2 -d $file_name.bz2 // bunzip2 $file_name.gz
xz -d $file_name.xz
# Keep original file after decompress (gzip & bzip2) >
gunzip -k $file_name.gz
bunzip2 -k $file_name.bz2


