# This cheatsheet has most important commands for user an group control


### User control Linux commands >
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

### User control Windows commands >
## User control commands in Windows >
WIN + R (open run) > lusrmgr.msc (open user mgr)
# Create a user account >
Users > New User > Username + Password > Create
# Delete a user account >
Users > Select user account > Right Click > Delete > Yes
# Modify a user account >
Users > Select user account > Right Click > Properties > OK
# Disable/Enable user from login screen (REGEDIT) >
WIN + R (open run) > regedit >
"HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon"
Create/Open Key Special Accounts
Create/Open DWORD 32bit VALUE (name it as user account)
Set DWORD value to 0 (disable) or 1 (enable) user on login screen
Save changes and close regedit

## Net user commands >
# List all user accounts >
net user
# List all user accounts and their properties >
net user /all
# List user account information >
net user $username
# Create user account >
net user $username $password /add
# Delete user account >
net user $username /delete
# Change password for user account >
net user $username /delete
# Disable/Enable user account (+ login screen) >
net user $username /active:no/yes
# Add user account to group >
net localgroup $group_name $username /add
# Remove user account from group >
net localgroup $group_name $username /delete
# Set comment for user account >
net user $username /comment:"$comment"
# Set full name for user account >
net user $username /fullname:"$full_name"
# Set description for user account >
net user $username /description:"$description"
# Set user account expiration date >
net user $username /expires:$date (MM/DD/YYYY)
# Set user account login time >
net user $username /time:$logon_times
# Require user account set new password on next logon >
net user $username /logonpasswordchg:yes/no
# Disable/Enable password for user account >
net user $username /passwordreq:no/yes
# Set minimum password lenght for all user accounts >
net accounts /minpwlen:$length
# Set minimum password age for all user accounts >
net accounts /minpwage:$length
# Set maximum password age for all user accounts >
net accounts /maxpwage:$lenght
# Set maximum wrong password attemps on login all user accounts >
net accounts /lockoutthreshold:$number
# Set duration of locking out account after wrong password >
net accounts /lockoutduration:$minutes
# Set duration between last failed attempt and first succes login >
net accounts /lockoutwindow:$minutes
# Maximum size of security logs >
net logons /maxsize:$size
# Set duration of time logon information is retained in logs >
net logons /autologoff:$minutes

## Group commands >
# List all user groups >
net localgroup
# List all domain groups >
net group /domain
# Create user group >
net group $group_name /add
# Delete user group >
net group $group_name /delete
# List members inside user group >
net group $group_name
# List groups of a user account >
net user $username /domain
net localgroup $group_name $username
# Set description for user group >
net group $group_name /comment:"<comment>"
# Primary group for a user >
net user $username /primary:$group_name
# Add user group to a global group >
net localgroup $group_name $globalgroupname /add
# Remove user group from a global group >
net localgroup $group_name $globalgroupname /delete
