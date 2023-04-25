# This cheatsheet has most important commands for applications


# Install application >
sudo apt-get install $package_name
# Update application >
sudo apt-get update
sudo apt-get upgrade
# Remove application >
sudo apt-get remove $package_name

# Search for an application >
sudo apt-cache search $package_name
# List all installed applications >
sudo dpkg --list
# Check application version >
sudo apt-cache policy $package_name
# Add repository to application cache >
sudo add-apt-repository $repository_url

## Install application from source >
./configure # Run configuration file if has one [chmod]
sudo apt-get install $missing_library # Install missing modules
make # Build application code
sudo make install # Install application
 