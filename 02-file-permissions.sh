# OFFICIAL DOCUMENTATION
# https://help.ubuntu.com/community/FilePermissions

# ADMINISTRATOR ACCESS WITH SUDO
visudo # edit sudoers file
nano /etc/sudoers
# Format: server-name=(user:group) /usr/sbin/reboot,/usr/sbin/shutdown

# FILE PERMISSIONS

ls -l # list items with permission information

chmod # change file mode bits
chmod u+rw <filename>
chmod g+r <filename>
chmod o-rw <filename>
chmod 770 -R <dirname>

find /path/to/dir -type f -exec chmod 644 {} ;

chown # change file owner and group
sudo chown <username> <filename>
sudo chown -R <username> <dirname>
sudo chown <username>:<groupname> <filename>

chgrp # change group ownership