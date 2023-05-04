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
`montage -geometry +$offset_x+$offset_y -tile 7x -background $color $small_image*.jpg $big_image`
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
# Install application >
`sudo apt-get install $package_name`
# Update application >
`sudo apt-get update`
`sudo apt-get upgrade`
# Remove application >
`sudo apt-get remove $package_name`

# Search for an application >
`sudo apt-cache search $package_name`
# List all installed packages >
`sudo dpkg --list`
# Check application version >
`sudo apt-cache policy $package_name`
# Add repository to application cache >
`sudo add-apt-repository $repository_url`

## Install application from source >
`./configure # Run configuration file if has one [chmod]`
`sudo apt-get install $missing_library # Install missing modules`
`make # Build application code`
`sudo make install # Install application`
# Create TAR archive >
`tar -cvf $archive_name.tar $dir_name`
# Extract TAR archive >
`tar -xvf $archive_name.tar`
# List content of TAR archive >
`tar -tvf $archive_name.tar`

# Create ZIP archive >
`zip -r $archive_name.zip $dir_name`
# Extract ZIP archive >
`unzip $archive_name.zip`
# List content of ZIP archive >
`unzip -l $archive_name.zip`

# Compress a file (gzip & bzip2 & xz) >
`gzip $file_name`
`bzip2 $file_name`
`xz $file_name`
# Decompress a file (gzip & bzip2 & xz) >
`gzip -d $file_name.gz // gunzip $file_name.gz`
`bzip2 -d $file_name.bz2 // bunzip2 $file_name.gz`
`xz -d $file_name.xz`
# Keep original file after decompress (gzip & bzip2) >
`gunzip -k $file_name.gz`
`bunzip2 -k $file_name.bz2`
## Linux commands >
`sudo nano /etc/hosts`
`127.0.0.1:8080 (blocked localhost port) $url`
**CTRL + O** / **CTRL + X** (exit nano)
**restart browser**
**Optional command:** `ipconfig /flushdns`

## Windows commands >
`notepad (run as administrator)`
`C:\Windows\System32\drivers\etc\hosts`
`127.0.0.1:8080 (blocked localhost port) $url`
**CTRL + S** (save & exit notepad)
**restart browser**
**Optional command:** `ipconfig /flushdns` 
## Linux commands >
### Viewing disk information:
Launch the Disks utility from the application menu or by typing gnome-disks in the terminal. It will display a list of all disks and storage devices attached to the system, along with their properties such as the device name, capacity, partition layout, and mount status.
### Creating disk partitions:
To create a new partition on a disk, select the disk in the list and click the plus (+) button below the partition list. Specify the partition size, format, and label as needed, then click Create.
### Formatting a disk:
To format a disk or a partition, select the disk or partition in the list and click the gear icon below the partition list. Choose Format Partition and specify the file system type, label, and other options as needed. Click Format to initiate the formatting process.
### Mounting a disk:
To mount a disk or a partition, select the partition in the list and click the gear icon. Choose Mount Options and specify the mount point, file system options, and other settings as needed. Click Mount to mount the partition.
### Unmounting a disk:
To unmount a mounted partition, select the partition in the list and click the Stop button next to the partition name. The partition will be unmounted, and its file system will become inaccessible.
### Checking disk health:
To check the health of a disk or a partition, select the partition in the list and click the gear icon. Choose SMART Data & Self-Tests to view the disk's health status, including the overall health assessment, error rate, temperature, and other SMART attributes.
 
## Windows commands >
### List disk:
This command displays a list of all the disks on the system, including their disk number and size. Type list disk in the Diskpart command prompt and press Enter.
### Select disk:
This command selects the specified disk for further operations. Type select disk X in the Diskpart command prompt, where "X" is the number of the disk you want to select, and press Enter.
### Clean:
This command removes all partition or volume formatting from the selected disk, making it an uninitialized disk. Type clean in the Diskpart command prompt and press Enter.
### Create partition primary:
This command creates a primary partition on the selected disk. Type create partition primary in the Diskpart command prompt and press Enter.
### Format:
This command formats the selected partition or volume with the specified file system. Type format fs=ntfs quick in the Diskpart command prompt, where "ntfs" is the file system you want to use, and "quick" performs a quick format.
### Assign:
This command assigns the next available drive letter to the selected volume. Type assign letter=X in the Diskpart command prompt, where "X" is the drive letter you want to assign to the volume, and press Enter.
### Extend:
This command extends the selected volume into unallocated space on the same disk. Type extend in the Diskpart command prompt and press Enter.
## List files inside a dir >
ls 
# Optional parameters for ls
`-a`: Shows hidden files and directories that start with dot
`-l`: Long listing format including permissions, owner, group, file size, and modification time
`-h`: Used with the -l option to display file sizes in a human-readable format
`-t`: Sorts the files by modification time, with the most recently modified files listed first
`-r`: Reverses the order of the file listing
`-S`: Sorts the files by file size, with the largest files listed first
`-u`: Sorts the files by access time, with the most recently accessed files listed first

# Create directory & file >
`touch $file_name`
`mkdir $dir_name`
# Create directories recursively >
`mkdir -p $long_dir_structure`
# Rename directory & file >
`mv $file_name $new_file`
`mv $dir_name $new_dir`
# Copy directory & file >
`cp $file_name $new_file`
`cp $dir_name $new_dir`
# Remove directory & file >
`rm $file_name`
`rmdir $dir_name`
`rm -r $dir_name`

## Display content of a file >
# All content >
`cat $file_name`
# First n/10 lines of a file >
`head [-n $number] $file_name`
# Last n/10 lines of a file >
`tail [-n $number] $file_name`

# Number words in a file >
`wc $file_name`
# Compare 2 files >
`diff $file_1 $file_2`
# Determine file type >
`file $file_name`
# Search content inside a file / output >
`grep [-r for more files] "$content"`

## File links >
# Create hard-link >
`ln $original_file $hard_link`
# Create symbolic-link >
`ln -s $original_file $symbolic_link`
`# Remove hard/symbolic-link >`
`rm $link_name`
# Copy symbolic-link >
`cp -P $symbolic_link $new_link`
# List all links for a file >
`ls -l $original_file`
# Update links >
`rm $symbolic_link`
`ln -s $new_file $symbolic_link`
# Find broken link >
`find -L $dir -type l`
# Add user to ftp control >
`sudo useradd -m -s /bin/bash $username`
`sudo passwd $username`
`sudo usermod -a -G ftp $username`
`sudo echo "$username" >> /etc/vsftpd.userlist`

# Start listening on port custom number >
`listen_port=$port`
# Disable/Enable anonymous login >
`anonymous_enable=NO/YES`
# Disable/Enable local user login >
`local_enable=YES/NO`
# Disable/Enable writing and uploading files >
`write_enable=YES/NO`
# Disable/Enable restriction to user home dir >
`chroot_local_user=YES/NO`
# Disable/Enable writeable home dir inside chroot jail >
`allow_writeable_chroot=YES/NO`
# Set home dir for each user >
`user_sub_token=$username`
`local_root=/home/$username/ftp`
# Create user and specify credentials >
`userlist_enable=YES`
`userlist_file=/etc/vsftpd.userlist`
`userlist_deny=NO`
# Pasive connect and port range >
`pasv_enable=YES`
`pasv_min_port=$port_1`
`pasv_max_port=$port_2`

# Check vsftpd version >
`sudo vsftpd -v`
# Disable/Enable log file >
`xferlog_enable=YES`
# Log file custom location >
`xferlog_file=/var/log/vsftpd.log`
# Echo log file >
`sudo tail -f /var/log/vsftpd.log`
# Test ftp server from local machine >
`ftp localhost $port`

## Example of settings >
`anonymous_enable=NO`
`local_enable=YES`
`write_enable=YES`
`local_umask=022`
`dirmessage_enable=YES`
`use_localtime=YES`
`xferlog_enable=YES`
`connect_from_port_20=YES`
`chroot_local_user=YES`
`secure_chroot_dir=/var/run/vsftpd/empty`
`pam_service_name=vsftpd`
`rsa_cert_file=/etc/ssl/private/vsftpd.pem`
`listen_port=2018`
# Open GRUB settings file >
`sudo nano /etc/default/grub`
`GRUB_TIMEOUT $seconds # Wait before booting OS`
`GRUB_HIDDEN_TIMEOUT $seconds # Wait before GRUB menu`
`GRUB_DEFAULT # Default OS on boot`
`GRUB_CMDLINE_LINUX_DEFAULT # Default kernel options`
`GRUB_BACKGROUND # Set background image for GRUB menu`
`GRUB_DISABLE_OS_PROBER TRUE/FALSE # Detection of OS`
`GRUB_GFXMODE # GRUB menu resolution`
`GRUB_GFXPAYLOAD_LINUX # Kernel console resolution`
`GRUB_TERMINAL # GRUB console terminal`
`GRUB_DISABLE_RECOVERY TRUE/FALSE # Display recovery options`
`GRUB_SERIAL_COMMAND # Serial console options`

# Save GRUB settings >
`sudo update-grub # Then restart the system`
# Open sudoers file >
`sudo visudo`
# Add user sudo group (Permit sudo with password) >
`sudo usermod -aG sudo $username`
# Permit sudo without password (sudoers file) >
`$username ALL=(ALL) NOPASSWD:ALL`
# Permit command without password (sudoers file) >
`$username ALL=(ALL) NOPASSWD:$command # Absolute path`

# Change permissions of directory & file >
`chmod $perm_code $file_name/$dir_name`
# Change the owner of directory & file >
`chown $owner $file_name/$dir_name`
## Permission codes >
`-777: _rwxrwxrwx`
`-755: _rwxr-xr-x`
`-700: _rwx------`
`-666: _rw-rw-rw-`
`-644: _rw-r--r--`
`-600: _rw-------`
# List all ongoing processes >
`sudo ps aux`
# More information about processes >
`sudo ps -ef`
# List ongoing processes and info about them >
`sudo ps`
`sudo top`
`sudo htop`

# End / Kill a process [$signal is optional] >
`sudo kill [$signal] $pid`
`$signal = SIGTERM(15) # The default signal, and it asks the process to terminate gracefully`
`$signal = SIGKILL(9) # Immediately terminates the process without allowing it to clean up`
`$signal = SIGINT(2) # Sent when you press Ctrl + C in the terminal, and it usually asks the process to terminate gracefully`

# Search PID by process nane >
`sudo pgrep $process_name`
# End / Kill a process >
`sudo pkill $process_name/$pid`
# Display the status of jobs that are running in the current session >
`jobs`
# Bring background process to foreground >
`fg`
# Send a process to the background >
`bg`
# Continuesly run process even if terminal/user killed >
`nohup`

# Lower priority of a process
`nice`
# Modify priority of a process
`renice`

# Enable process start at boot time >
`sudo systemctl enable $process_name`
# Disable process start at boot time >
`sudo systemctl disable $process_name`

### Install SSH server >
`sudo apt install openssh-server`
### Check SSH service status >
`sudo systemctl status sshd`
### Restart SSH service status >
`sudo systemctl restart sshd`
`sudo /etc/init.d/ssh force-reload`
`sudo /etc/init.d/ssh restart`
### Modify SSH config file >
`sudo nano /etc/ssh/sshd_config`
### Enable/Disable key logging SSH >
`PasswordAuthentication no/yes` (set to login using keys)
`PubkeyAuthentication no/yes` (can cause issues)
### Disable password authentication and use key only >
`PasswordAuthentication no`
`ChallengeResponseAuthentication no`
`UsePAM no`
### Disable root login SSH server >
`PermitRootLogin no`
### Change default (22) SSH port >
`Port $port_number`
### Limit SSH to specific IP addr >
`Match Address 192.168.1.0/24`
`PermitRootLogin no`
### Generate keys for SSH login >
`ssh-keygen` (both windows & linux)
### Copy public key to SSH server >
`ssh-copy-id $user@$ip_addr`
### Access SSH server using keys >
`ssh -i ~/.ssh/id_rsa $user@$ip_addr`
### 2 FA authentication SSH server >
`AuthenticationMethods publickey,keyboard-interactive`
### Access SSH server using normal login >
`ssh $user@$ip_addr`
`ssh -p $port_number $user@$ip_addr`
### Copy files via SSH >
`scp $local_path $user@$ip_addr:$remote_path`
`scp $user@$ip_addr:$remote_path $local_path`
### SSH connection timeout >
`ClientAliveInterval 120`
`ClientAliveCountMax 2`
## Linux commands >
`crontab -e` (open crontab scheduled tasks)
`min hour day_of_month month day_of_week $command` (create a task)
**$min** = minute (0 - 59) of task run
**$hour** = hour (0 - 23) of task run
**$day_of_month** = day (1 - 31) of task run
**$month** = month (1 - 12) of task run
**$day_of_week** = day (0 - 6 [0 > Sunday]) of task run

## Windows commands >
**Task Scheduler** > Right Click > **Task Scheduler Library**
**Set task triggers**
**Configure task action**
**Save the task and exit panel**

### Display a message
**Create command.bat file** >
`@echo off`
`msg * "$message"`
\* = user account (all)
**$message** = text to display
### User control Linux commands >
## Administrative commands
# List all user accounts >
`sudo cat /etc/passwd | awk -F: '{print $1}'`
# Create user account >
`sudo useradd $username`
# Delete user account (not home dir) >
`sudo userdel $username`
# Delete user account and home dir >
`sudo userdel -r $username`
# Set password for user account >
`sudo passwd $username`
# Modify user account 
`sudo usermod $username`
# Display user account (session) >
`whoami`
# Switch user account session >
`su $username`
# Rename user account >
`sudo usermod -l $new_username $old_username`

## Group commands
# List all user groups >
`sudo cat /etc/group | awk -F: '{print $1}'`
# Create user group >
`sudo groupadd -g $group_id $group_name`
# Delete user group >
`sudo groupdel $group_name`
# Rename user group >
`sudo groupmod -n $new_group $old_group`
# Add user account to group >
`sudo usermod -aG $group_name $username`
# Remove user account from group >
`sudo usermod -G -$group_name $username`
# Set password for user group >
`sudo gpasswd $group_name`
# Temporary change primary group (session) >
`newgrp $group_name`
# List user's group id's and user's id >
`sudo id $username`

### User control Windows commands >
## User control commands in Windows >
`WIN + R (open run) > lusrmgr.msc (open user mgr)`
# Create a user account >
`Users > New User > Username + Password > Create`
# Delete a user account >
`Users > Select user account > Right Click > Delete > Yes`
# Modify a user account >
`Users > Select user account > Right Click > Properties > OK`
# Disable/Enable user from login screen (REGEDIT) >
`WIN + R (open run) > regedit >`
`"HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon"`
`Create/Open Key Special Accounts`
`Create/Open DWORD 32bit VALUE (name it as user account)`
`Set DWORD value to 0 (disable) or 1 (enable) user on login screen`
`Save changes and close regedit`

## Net user commands >
# List all user accounts >
`net user`
# List all user accounts and their properties >
`net user /all`
# List user account information >
`net user $username`
# Create user account >
`net user $username $password /add`
# Delete user account >
`net user $username /delete`
# Change password for user account >
`net user $username /delete`
# Disable/Enable user account (+ login screen) >
`net user $username /active:no/yes`
# Add user account to group >
`net localgroup $group_name $username /add`
# Remove user account from group >
`net localgroup $group_name $username /delete`
# Set comment for user account >
`net user $username /comment:"$comment"`
# Set full name for user account >
`net user $username /fullname:"$full_name"`
# Set description for user account >
`net user $username /description:"$description"`
# Set user account expiration date >
`net user $username /expires:$date (MM/DD/YYYY)`
# Set user account login time >
`net user $username /time:$logon_times`
# Require user account set new password on next logon >
`net user $username /logonpasswordchg:yes/no`
# Disable/Enable password for user account >
`net user $username /passwordreq:no/yes`
# Set minimum password lenght for all user accounts >
`net accounts /minpwlen:$length`
# Set minimum password age for all user accounts >
`net accounts /minpwage:$length`
# Set maximum password age for all user accounts >
`net accounts /maxpwage:$lenght`
# Set maximum wrong password attemps on login all user accounts >
`net accounts /lockoutthreshold:$number`
# Set duration of locking out account after wrong password >
`net accounts /lockoutduration:$minutes`
# Set duration between last failed attempt and first succes login >
`net accounts /lockoutwindow:$minutes`
# Maximum size of security logs >
`net logons /maxsize:$size`
# Set duration of time logon information is retained in logs >
`net logons /autologoff:$minutes`

## Group commands >
# List all user groups >
`net localgroup`
# List all domain groups >
`net group /domain`
# Create user group >
`net group $group_name /add`
# Delete user group >
`net group $group_name /delete`
# List members inside user group >
`net group $group_name`
# List groups of a user account >
`net user $username /domain`
`net localgroup $group_name $username`
# Set description for user group >
`net group $group_name /comment:"<comment>"`
# Primary group for a user >
`net user $username /primary:$group_name`
# Add user group to a global group >
`net localgroup $group_name $globalgroupname /add`
# Remove user group from a global group >
`net localgroup $group_name $globalgroupname /delete`
 