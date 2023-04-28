# This cheatsheet has most important commands for permissions


# Open sudoers file >
sudo visudo
# Add user sudo group (Permit sudo with password) >
sudo usermod -aG sudo $username
# Permit sudo without password (sudoers file) >
$username ALL=(ALL) NOPASSWD:ALL
# Permit command without password (sudoers file) >
$username ALL=(ALL) NOPASSWD:$command # Absolute path
 