# UTILITY COMMANDS

whoami # print effective userid
whatis # display one-line manual page description
whereis # locate the binary, source, and manual page files for a command

man # display manual for a command

date # print or set system time

# OPENSSH

/etc/ssh/sshd_config
Port 65332 # random port number
Protocol 2 # in 18.04 it is used by default and Protocol 1 has been deleted
AllowGroups remote # create a new group and only allow that group to connect
PermitRootLogin no
PasswordAuthentication no # only secure ssh-key authentication

# TRUST A CERTIFICATE

# Go to /usr/local/share/ca-certificates/
# Create a new folder, i.e. "sudo mkdir school"
# Copy the .crt file into the school folder
# Make sure the permissions are OK (755 for the folder, 644 for the file)
# Run "sudo update-ca-certificates"

# INSTALL GOOGLE CHROME

wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
# if you encounter any errors simply use
sudo apt-get -f install