cat /etc/os-release | grep PRETTY_NAME

# simple linux kernel version display
uname -r

# full linux kernel version and other info display
uname -a

# apt related config files and sources list directory
cd /etc/apt/

cat sources.list

cd sources.list.d

bat kubernetes.list

bat vivaldi.sources

bat claude-desktop.list

bat vivaldi.list.save

bat vivaldi.list.disabled

# to list all the groups available in the system -now after going into rabbit hole of `ls -lah` command output
groups

groups --help

apt list --upgradable

sudo apt update

man vi

man glibc

