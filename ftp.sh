# This cheatsheet has most important settings for ftp


# Add user to ftp control >
sudo useradd -m -s /bin/bash $username
sudo passwd $username
sudo usermod -a -G ftp $username
sudo echo "$username" >> /etc/vsftpd.userlist

# Start listening on port custom number >
listen_port=$port
# Disable/Enable anonymous login >
anonymous_enable=NO/YES
# Disable/Enable local user login >
local_enable=YES/NO
# Disable/Enable writing and uploading files >
write_enable=YES/NO
# Disable/Enable restriction to user home dir >
chroot_local_user=YES/NO
# Disable/Enable writeable home dir inside chroot jail >
allow_writeable_chroot=YES/NO
# Set home dir for each user >
user_sub_token=$username
local_root=/home/$username/ftp
# Create user and specify credentials >
userlist_enable=YES
userlist_file=/etc/vsftpd.userlist
userlist_deny=NO
# Pasive connect and port range >
pasv_enable=YES
pasv_min_port=$port_1
pasv_max_port=$port_2

# Check vsftpd version >
sudo vsftpd -v
# Disable/Enable log file >
xferlog_enable=YES
# Log file custom location >
xferlog_file=/var/log/vsftpd.log
# Echo log file >
sudo tail -f /var/log/vsftpd.log
# Test ftp server from local machine >
ftp localhost $port

## Example of settings >
anonymous_enable=NO
local_enable=YES
write_enable=YES
local_umask=022
dirmessage_enable=YES
use_localtime=YES
xferlog_enable=YES
connect_from_port_20=YES
chroot_local_user=YES
secure_chroot_dir=/var/run/vsftpd/empty
pam_service_name=vsftpd
rsa_cert_file=/etc/ssl/private/vsftpd.pem
listen_port=2018
