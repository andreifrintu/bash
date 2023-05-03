# This cheatsheet has most important SSH settings and commands 


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
