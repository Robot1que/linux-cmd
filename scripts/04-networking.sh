# OFFICIAL DOCUMENTATION
# https://netplan.io/
# 

# HOSTNAME

/etc/hostname
/etc/hosts

sudo hostnamectl set-hostname <hostname>

sudo netstat -lntp # list opened port

# IP ADDRESS

ip addr # show IP address

# DNS

cat /etc/nsswitch.conf # see the order of resolution
systemd-resolve --status # see used DNS

# UFW - Uncomplicated Firewall

sudo apt install ufw

sudo ufw allow 22
sudo ufw allow from 192.168.1.156 to any port 22
sudo ufw allow from 192.168.1.0/24 to any port 22
sudo ufw allow from 192.168.1.50

sudo ufw enable
sudo ufw status
