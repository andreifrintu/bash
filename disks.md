# This cheatsheet has most important disks settings and commands


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
 