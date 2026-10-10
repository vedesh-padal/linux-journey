# systemd reads /etc/fstab for mounts; parses units in /lib/systemd/system.
ls -la /etc/fstab 

cat /etc/fstab

# List all recognized partitions and their Universally Unique Identifier (UUID)
blkid --help

tldr blkid

# to get the system related info in a pretty tui
fastfetch

# kernel version
uname -r

ping 8.8.8.8

ping google.com

# this is where your hosts resolution to their IP lives, learnt about `nameserver` here, it is usually pointed to local - 127.0.0.X - it inturn points to the Internet Provider IP address, basically DNS resolution happens based on their
bat /etc/resolv.conf

# to get the dns resolvers info etc.
resolvectl status

cowsay "hello vedesh"

time sleep --help

time sleep 2

tldr journalctl

journalctl -b -p err

# to see which service is taking more time / decreasing order of time taken when system boots up
systemd-analyze blame

# a short 1-2 lines of boot time of each thing
systemd-analyze 

# had to install this for `ifconfig` to recognize
sudo apt install net-tools

# but ifconfig is deprecated, hence removed
sudo apt remove net-tools

# deprecated cli util, use `ip` cli instead
ifconfig

