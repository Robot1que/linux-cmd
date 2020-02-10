# UTILITY COMMANDS

whoami # print effective userid
whatis # display one-line manual page description
whereis # locate the binary, source, and manual page files for a command

man # display manual for a command
date # print or set system time
$? # last command exit code
cd - # change directory to previous location

# MULTIPLE COMMANDS IN SINGLE LINE

echo "Command 1" && echo "Command 2" # execute the second command if the first one succeeds
echo "Command 1"; echo "Command 2" # execute the first command, then the second

# STREAMS

echo "content" > ~/file.txt # set content of a file
echo "content" >> ~/file.txt # append content to a file
find /etc -name *apache* 2>/dev/null # ignore stderr

read age # promt user to input value
echo $age

# ALIASES

alias # show registered aliases
alias i="sudo apt install"
i tmux

# COMMAND HISTORY

history # show command history
history -d 100 # delete command from history
!100 # execute command from history
sudo !! # execute last command

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

# READING LOGS
head -n 15 file.txt
tail -n 15 file.txt
less file.txt # h - help, /term - search, g - jump to end of a file

# READING JSON DATA
sudo apt-get install jq
docker logs es --tail 3 | jq
docker logs es --tail 3 | jq '.message'
