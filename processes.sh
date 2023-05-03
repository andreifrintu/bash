# This cheatsheet has most important commands for processes

# List all ongoing processes >
sudo ps aux
# More information about processes >
sudo ps -ef
# List ongoing processes and info about them >
sudo ps
sudo top
sudo htop

# End / Kill a process [$signal is optional] >
sudo kill [$signal] $pid
$signal = SIGTERM(15) # The default signal, and it asks the process to terminate gracefully
$signal = SIGKILL(9) # Immediately terminates the process without allowing it to clean up
$signal = SIGINT(2) # Sent when you press Ctrl + C in the terminal, and it usually asks the process to terminate gracefully

# Search PID by process nane >
sudo pgrep $process_name
# End / Kill a process >
sudo pkill $process_name/$pid
# Display the status of jobs that are running in the current session >
jobs
# Bring background process to foreground >
fg
# Send a process to the background >
bg
# Continuesly run process even if terminal/user killed >
nohup

# Lower priority of a process
nice
# Modify priority of a process
renice

# Enable process start at boot time >
`sudo systemctl enable $process_name`
# Disable process start at boot time >
`sudo systemctl disable $process_name`
