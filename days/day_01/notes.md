# Day 01 — What is Linux? Kernel, Distributions, and Ecosystem
Date: 2026-10-06 | Time spent: 1 hr 30 mins 

## In my own words

### Core Components of Linux

Linux is structured in layers, from hardware to user applications. Here's a high-level overview:

```
+----------------------------------------------------+
| User Applications (Vim, Docker, Apache, etc.)     |
+----------------------------------------------------+
| Shell (Bash, Zsh, Fish, etc.)                     |  <-- Part of the OS
+----------------------------------------------------+
| System Libraries (glibc, libc, OpenSSL, etc.)     |  <-- Part of the OS
+----------------------------------------------------+
| System Utilities (ls, grep, systemctl, etc.)      |  <-- Part of the OS
+----------------------------------------------------+
| Linux Kernel (Process, Memory, FS, Network)       |  <-- Core of the OS
+----------------------------------------------------+
| Hardware (CPU, RAM, Disk, Network, Peripherals)   |
+----------------------------------------------------+
```

- many other things -- history of linux, what linux is, importance, basics, core foundation, difference with windows, few basic commands, experiements - detailed coverage in the original repo
## What broke (command → error → fix)

- spun up 2 aws ec2 instances, permission denied due to trying to login to wrong username of that particular machine image.

## Surprises / things I got wrong

- have to be careful about cloud billing - got to know about pricing about various AWS offerings

## Can I do these without looking? (tick off from the repo's exercises)

- [x] Understand what Linux is and its history
- [x] Can explain the role of the Linux kernel
- [x] Know major Linux distributions and their use cases
- [x] Understand the difference between kernel and distribution
- [x] Familiar with package management concepts and commands
- [x] Understand the Linux ecosystem and GNU Project
- [x] Recognize Linux’s importance for DevOps/SRE/Cloud roles
- [x] Successfully launched and connected to two Linux instances
- [x] Ran basic commands and a simple script in the lab
- [x] Completed the challenge question for deeper insight

## Questions to dig into later

- how to efficiently manage multiple ssh connections? maybe sshpass? (heard about it at work during exploration), maybe some aliases? - theo.gg might've referred smth in his videos?
- 