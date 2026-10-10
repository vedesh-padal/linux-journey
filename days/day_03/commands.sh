# to see which user is logged in
echo $USER

# same as echo #USER
whoami

# to get the hostname or computer name
hostname

tldr chmod

ls -la /opt

ls -la /dev

# Describes file content type
file notes.md

# Detailed file metadata including inode
stat notes.md

tree ~ -L 3

# -s for symbolic link
echo "Hi" > file; ln -s file sym; ln file hard;

# list the inode values when doing ls with -i flag
ls -li

bat /boot/config-7.0.0-38-generic

# vmlinuz is the bootable, compressed Linux kernel executable file located in the /boot directory of a Linux system.
file /boot/vmlinuz

file /bin/ls /etc/passwd /dev/sda; stat /bin/ls

# give me a list of all hidden "files" in that particular path
sudo find /var/log -name '.*' -type f

bat ~/.ssh/known_hosts

# to get info of that symbolic link is related to which file. readlink `symLinkName`
readlink sym

# see the hostname mappings to ip addresses, in the system
bat /etc/hosts

# vmlinuz is the boota
find . -type l -exec test ! -e {} \; -print

# -I for ignore those specific files, if multiple u can have `one|two|three` and output the tree structure into a file
tree -I 'file' > structure.txt

# Display an overview of the filesystem disk space usage.
df -h

# give with inode information
df -i /

# -h flag is for human readable units like GB, MB nicely instead of standard Bytes only irrespective of how big the file is
df -h /

# is a fast, text-based disk usage analyzer for Unix and Linux systems
ncdu /

sudo journalctl --vacuum-time=1d

# traces syscalls
strace ls

# checks exit code of the last executed command
echo $?

tldr resize2fs

