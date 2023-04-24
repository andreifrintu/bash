# This cheatsheet has most important commands for GRUB settings


# Open GRUB settings file >
sudo nano /etc/default/grub
GRUB_TIMEOUT $seconds # Wait before booting OS
GRUB_HIDDEN_TIMEOUT $seconds # Wait before GRUB menu
GRUB_DEFAULT # Default OS on boot
GRUB_CMDLINE_LINUX_DEFAULT # Default kernel options
GRUB_BACKGROUND # Set background image for GRUB menu
GRUB_DISABLE_OS_PROBER TRUE/FALSE # Detection of OS
GRUB_GFXMODE # GRUB menu resolution
GRUB_GFXPAYLOAD_LINUX # Kernel console resolution
GRUB_TERMINAL # GRUB console terminal
GRUB_DISABLE_RECOVERY TRUE/FALSE # Display recovery options
GRUB_SERIAL_COMMAND # Serial console options

# Save GRUB settings >
sudo update-grub # Then restart the system