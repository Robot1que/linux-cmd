# MONITOR PROCESSES

pidof <process-name> # get a process ID of a running process

ps # report a snapshot of the current processes
man ps

ps aux
ps aux --sort=-pcpu
ps aux --sort=-pmem | head -n 5

# BACKGROUND JOBS

# type & characted to run a command in the bacground
nano &

jobs # list background jobs
fg <job-id> # bring most recent job (or job with ID) to the foreground

# PROCESS TERMINATION

man 7 signal # help
kill <PID> # send a signal to a process
# SIGTERM (15) - gracefully stop a process
# KILL (9) - immediatelly stop a process

# HTOP PROCESS MONITOR

sudo apt install htop
htop # replaces old 'top' command
htop -d 10 # update view every second

# SYSTEM PROCESSES

apt show systemd # show info about system and service manager
systemctl # (assumes the list-units command) list units currently in memory
systemctl status ssh
sudo systemctl start ssh
sudo systemctl stop ssh
sudo systemctl enable ssh
sudo systemctl disable ssh

# MONITOR MEMORY USAGE

free -m # display amount of free and used memory in megabites

# change swapinness until reboot
cat /proc/sys/vm/swappiness
sudo sysctl vm.swappiness=30

# change swappiness for good
/etc/sysctl.conf

# SCHEDULING TASKS

crontab -l
sudo crontab -u <usename> -l

crontab -e
EDITOR=vim crontab -e

# LOAD AVERAGE

uptime # display up time and load average
cat /proc/loadavg # display load average in 1-min, 5-min, and 15-min sections
