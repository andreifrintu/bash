# This cheatsheet has most important commands for permissions


# Open sudoers file >
sudo visudo
# Add user sudo group (Permit sudo with password) >
sudo usermod -aG sudo $username
# Permit sudo without password (sudoers file) >
$username ALL=(ALL) NOPASSWD:ALL
# Permit command without password (sudoers file) >
$username ALL=(ALL) NOPASSWD:$command # Absolute path

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
 