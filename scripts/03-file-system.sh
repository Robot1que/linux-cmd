# LINKS

ls -i # see items inode values

ln # make links between files
ln file1 file2 # creates hard link
ln -s file1 file2 # creates symbolic link

# DISK USAGE

df # report file system disk space usage
df -h # human readable format
df -i # report inode usage

du # estimate file usage space
du -hsc *

# PARTITIONING

fdisk # change partition table
sudo fdisk -l
dmesg --follow # follow kernel messages to discover attached HDD
lsblk # list information about block devices

sudo fdisk /dev/sdb # then enter:
# 'g' to use GPT partition tables
# 'n' to create partition (use default values to use the whole disk)
# 'w' to save and exit

mkfs # make a Linux filesystem
sudo mkfs.ext4 /dev/sdb1 # format partition using ext4 filesystem

# MOUNT VOLUME

sudo blkid # get UUID of a new device
sudo nano /etc/fstab
# UUID="3f849d0b-fc97-45ea-a0b2-ff0aa466322c" /mnt/docker/ ext4 defaults 0 2

# NCurses Disk Usage
sudo apt install ncdu
sudo ncdu