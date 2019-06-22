# DEBIAN PACKAGE MANAGEMENT

sudo apt install [--install-sugests] <package1> <package2> <package3> # instal multiple packages
sudo apt update # update package list cache
sudo apt upgrade # update package version to the latest
sudo apt remove [--purge] <package1> <package2> <package3> # remove package [and local configs]
apt search <search terms>
apt-cache show # show package info
sudo apt autoremove # remove orphaned packages

# Location of repository config files
/etc/apt/sources.list
/etc/apt/sources.list.d/*.list

sudo apt-add-repository ppa:username/package-1.0

# Back up installed package list and restore it

dpkg --get-selections > packages.list

sudo apt install dselect
sudo dselect update
sudo dpkg --set-selections < packages.list
sudo apt-get dselect-upgrade

# SNAP PACKAGE MANAGEMENT

snap find <package>
sudo snap install <package>
sudo snap remove <package>
sudo snap refresh <package> # update package
sudo snap refresh # update all packages

# APTITUDE TOOL

sudo apt install aptitude
sudo aptitude
sudo aptitude unmarkauto <package>
 
# HARDWARE ENABLEMENT

sudo apt install --install-recommends linux-generic-hwe-16.04