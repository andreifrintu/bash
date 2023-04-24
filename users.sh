# This cheatsheet has most important commands for user an group control


## Administrative commands
# List all user accounts >
sudo cat /etc/passwd | awk -F: '{print $1}'
# Create user account >
sudo useradd $username
# Delete user account (not home dir) >
sudo userdel $username
# Delete user account and home dir >
sudo userdel -r $username
# Set password for user account >
sudo passwd $username
# Modify user account 
sudo usermod $username
# Display user account (session) >
whoami
# Switch user account session >
su $username
# Rename user account >
sudo usermod -l $new_username $old_username

## Group commands
# List all user groups >
sudo cat /etc/group | awk -F: '{print $1}'
# Create user group >
sudo groupadd -g $group_id $group_name
# Delete user group >
sudo groupdel $group_name
# Rename user group >
sudo groupmod -n $new_group $old_group
# Add user account to group >
sudo usermod -aG $group_name $username
# Remove user account from group >
sudo usermod -G -$group_name $username
# Set password for user group >
sudo gpasswd $group_name
# Temporary change primary group (session) >
newgrp $group_name
# List user's group id's and user's id >
sudo id $username
