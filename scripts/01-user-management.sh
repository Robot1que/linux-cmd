# OFFICIAL DOCUMENTATION
# https://help.ubuntu.com/lts/serverguide/user-management.html

sudo useradd --home /home/newuser newuser # create a new user
sudo usermod --home /home/newuser --shell /bin/bash newuser # modify user
sudo userdel newuser # delete user

groupadd # create a new group
groupdel # delete a group
groups # display groups current user is in

/etc/passwd # users
/etc/shadow # user passwords
/etc/group # groups

passwd # change user password, lock/unlock user
su # switch user
usermod # change user details
gpasswd # user group modifications
chage # change user password policy

# ALLOW USER USE SUDO
echo "newuser ALL=(ALL) NOPASSWD: ALL" | sudo tee /etc/sudoers.d/newuser
sudo chown root:root /etc/sudoers.d/newuser
sudo chmod 440 /etc/sudoers.d/newuser
