# OFFICIAL DOCUMENTATION
# https://help.ubuntu.com/community/SSH/OpenSSH
# https://help.ubuntu.com/community/SSH/OpenSSH/Keys

# SSH - CLIENT/SERVER CONFUGURATION

sudo apt install openssh-server
/usr/sbin/sshd

sudo apt install openssh-client
/usr/bin/ssh

systemctl status ssh # verify if SSH daemon is running
sudo netstat -tulpn | grep ssh # verify that SSH daemon is listening

# SSH - CLIENT

ssh <ipaddres>
ssh <username>@<ipaddress>
ssh -p <port> <username>@<ipaddress>

# SSH - KEY MANAGEMENT

ssh-keygen # auth key generation, management and convertion
ssh-keygen -p # change passphrase of an existing key
ls -l ~/.ssh # verify files have been created

ssh-copy-id -i ~/.ssh/id_rda.pub <target-hostname>
~/.ssh/authorized_keys

# SSH - PASSPHRASE CACHING

eval $(ssh-agent) # start authentication agent
ssh-add ~/.ssh/id_rsa # add private key identities to authentication agent

# SSH - CLIENT CONFIG FILE

/home/<username>/.ssh/config # create this file to pre-configure SSH parameters

# Host server01
#     Hostname 102.168.0.100
#     Port 22
#     User jdoe
#
# Host server02
# ...

ssh myserver # all pre-configured parameters are overridable

# SSH - SERVER CONFIG

/etc/ssh/sshd_config # SSH daemon config file - see SSH Security section for more info
/var/log/auth.log # authentication attemt log file

# SSH - RECOMMENDED SERVER CONFIGURATION

sudo nano /etc/ssh/sshd_config

Port 65332 # random port number
Protocol 2 # in 18.04 it is used by default and Protocol 1 has been deleted
AllowGroups remote # create a new group and only allow that group to connect
PermitRootLogin no
PasswordAuthentication no # only secure ssh-key authentication