# This cheatsheet has most important alternative commands


# Linux commands >
## Image & File metadata
### **Exiftool**:
### Reading metadata >
`exiftool $file_name`
### Writing metadata >
`exiftool -TAG=$VALUE $file_name`
### Editing metadata >
`exiftool -TAG-= $file_name`
### Copying metadata >
`exiftool -TagsFromFile $file_name $new_file`
### Rename file from metadata > (all files inside specific dir)
`exiftool '-FileName<${DateTimeOriginal} ${Model}.%e' $dir`
### **Steghide**:
### Hide data >
`steghide embed -cf $cover_file -ef $data_file -sf $file_name`
### Extract data >
`steghide extract -sf $file_name`
### Check for hidden data >
`steghide info $file_name`
### Verify password steghide >
`steghide test -sf $file_name`
### Composite images togheter (mount) ImageMagick >
`montage -geometry +$offset_x+$offset_y -tile 7x -background $color $small_image*.jpg $big_image`
`$small_image*.jpg` => select all files with that form
`-tile 7x` => 7 images per row and display as many as needed
`-background $color` => set background color for output image (white)
### Find file with n lines >
`wc -l **/*.txt | grep $lines`
### **NGinx**
### Start & stop nginx process >
`sudo systemctl start nginx`
`sudo systemctl stop nginx`
`sudo ps -aux | grep nginx`
`sudo nginx -s quit` (gracefully)
`sudo nginx -s stop` (forcefully)
### Reload NGinx config >
`sudo systemctl restart nginx`
`sudo systemctl reload nginx`
`sudo systemctl status nginx`
`sudo nginx -t`
### Show NGinx lgos >
`sudo tail -f /var/log/nginx/access.log`
`sudo tail -f /var/log/nginx/error.log`
### Test response time >
`ab -n 100 -c 10 http://localhost/`
 