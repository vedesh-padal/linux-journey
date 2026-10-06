# Linux Journey

My daily log of learning Linux for DevOps/SRE, following the open-source curriculum
**[Linux – The Final Boss](https://github.com/Sagar2366/linux_the_final_boss)** by
[Sagar2366](https://github.com/Sagar2366). All course content and credit belong to the original author.
This repo only holds **my own notes, practiced commands, and mistakes**.

- **Commitment:** one day of the curriculum, every day.
- **Started:** 2026-10-06
- **Environment:** Ubuntu on my laptop; risky days (firewall, disks, LVM/RAID, hardening) run in a throwaway VM.
- **Author:** [Vedesh Padal](https://vedeshpadal.me) · [GitHub](https://github.com/vedesh-padal)

## How I work each day

1. Read the day's notes and try the exercises **before** looking at the solutions.
2. Practice in the terminal. Every command is logged automatically (command, exit code, directory; **no output**) to a private log that is never committed.
3. Curate: keep only the working, useful commands in `commands.sh` with a comment on each.
4. Write `notes.md` in my own words, including a **What broke** section (command → error → fix). Failures are the best learning material.
5. Commit and tick the day off below.
6. Every Sunday: review the week's mistakes and re-run commands from memory.

## Repo layout

```
days/day_XX/
├── notes.md       # what I understood, what broke, open questions
├── commands.sh    # curated, working commands with comments
└── scratch/       # throwaway lab files (gitignored)
raw/               # automatic command logs (gitignored, private)
```

## Progress

Legend: ⬜ not started · 🟨 in progress · ✅ done

### Core track (Days 0–26)

| Day | Topic | Status | My notes | Course material |
| --- | ----- | :----: | -------- | --------------- |
| 00 | Introduction & Course Goals | ⬜ | [notes](days/day_00/notes.md) | [source](https://github.com/Sagar2366/linux_the_final_boss/blob/main/Day_00/notes_and_exercises.md) |
| 01 | What is Linux? Kernel, Distributions, and Ecosystem | ⬜ | [notes](days/day_01/notes.md) | [source](https://github.com/Sagar2366/linux_the_final_boss/blob/main/Day_01/notes_and_exercises.md) |
| 02 | Virtualization & Setting Up Linux (VM, WSL, Cloud) | ⬜ | [notes](days/day_02/notes.md) | [source](https://github.com/Sagar2366/linux_the_final_boss/blob/main/Day_02/notes_and_exercises.md) |
| 03 | Linux Folder Structure & File Types | ⬜ | [notes](days/day_03/notes.md) | [source](https://github.com/Sagar2366/linux_the_final_boss/blob/main/Day_03/notes_and_exercises.md) |
| 04 | Linux Boot Process & Service Management | ⬜ | [notes](days/day_04/notes.md) | [source](https://github.com/Sagar2366/linux_the_final_boss/blob/main/Day_04/notes_and_exercises.md) |
| 05 | Basic Linux Commands for DevOps Engineers | ⬜ | [notes](days/day_05/notes.md) | [source](https://github.com/Sagar2366/linux_the_final_boss/blob/main/Day_05/notes_and_exercises.md) |
| 06 | Advanced Linux Commands (grep, awk, sed, find, xargs, etc.) | ⬜ | [notes](days/day_06/notes.md) | [source](https://github.com/Sagar2366/linux_the_final_boss/blob/main/Day_06/notes_and_exercises.md) |
| 07 | Users, Groups & Permissions | ⬜ | [notes](days/day_07/notes.md) | [source](https://github.com/Sagar2366/linux_the_final_boss/blob/main/Day_07/notes_and_exercises.md) |
| 08 | File Management & Editors (nano, vi/vim) | ⬜ | [notes](days/day_08/notes.md) | [source](https://github.com/Sagar2366/linux_the_final_boss/blob/main/Day_08/notes_and_exercises.md) |
| 09 | File Transfer (SCP, SFTP, rsync, FTP, NFS, Samba) | ⬜ | [notes](days/day_09/notes.md) | [source](https://github.com/Sagar2366/linux_the_final_boss/blob/main/Day_09/notes_and_exercises.md) |
| 10 | Environment Variables, Aliases & Shell Customization | ⬜ | [notes](days/day_10/notes.md) | [source](https://github.com/Sagar2366/linux_the_final_boss/blob/main/Day_10/notes_and_exercises.md) |
| 11 | Pipes, Redirects, Wildcards, and Links | ⬜ | [notes](days/day_11/notes.md) | [source](https://github.com/Sagar2366/linux_the_final_boss/blob/main/Day_11/notes_and_exercises.md) |
| 12 | Compression, Archiving, and Backups | ⬜ | [notes](days/day_12/notes.md) | [source](https://github.com/Sagar2366/linux_the_final_boss/blob/main/Day_12/notes_and_exercises.md) |
| 13 | Process Management & Scheduling (cron, at, anacron) | ⬜ | [notes](days/day_13/notes.md) | [source](https://github.com/Sagar2366/linux_the_final_boss/blob/main/Day_13/notes_and_exercises.md) |
| 14 | System Monitoring & Log Management | ⬜ | [notes](days/day_14/notes.md) | [source](https://github.com/Sagar2366/linux_the_final_boss/blob/main/Day_14/notes_and_exercises.md) |
| 15 | Networking & Troubleshooting | ⬜ | [notes](days/day_15/notes.md) | [source](https://github.com/Sagar2366/linux_the_final_boss/blob/main/Day_15/notes_and_exercises.md) |
| 16 | Security, Firewalls & Hardening | ⬜ | [notes](days/day_16/notes.md) | [source](https://github.com/Sagar2366/linux_the_final_boss/blob/main/Day_16/notes_and_exercises.md) |
| 17 | Package Management (apt, yum, dnf, rpm) | ⬜ | [notes](days/day_17/notes.md) | [source](https://github.com/Sagar2366/linux_the_final_boss/blob/main/Day_17/notes_and_exercises.md) |
| 18 | Web Servers (Apache, Nginx, Reverse Proxy) | ⬜ | [notes](days/day_18/notes.md) | [source](https://github.com/Sagar2366/linux_the_final_boss/blob/main/Day_18/notes_and_exercises.md) |
| 19 | Advanced Linux Storage & Filesystems (ext4, xfs, btrfs, quotas, tuning) | ⬜ | [notes](days/day_19/notes.md) | [source](https://github.com/Sagar2366/linux_the_final_boss/blob/main/Day_19/notes_and_exercises.md) |
| 20 | Basic Shell Scripting | ⬜ | [notes](days/day_20/notes.md) | [source](https://github.com/Sagar2366/linux_the_final_boss/blob/main/Day_20/notes_and_exercises.md) |
| 21 | Volume Management (LVM, RAID, Snapshots, Resizing) | ⬜ | [notes](days/day_21/notes.md) | [source](https://github.com/Sagar2366/linux_the_final_boss/blob/main/Day_21/notes_and_exercises.md) |
| 22 | Certificate Management (SSL/TLS, OpenSSL, Certbot) | ⬜ | [notes](days/day_22/notes.md) | [source](https://github.com/Sagar2366/linux_the_final_boss/blob/main/Day_22/notes_and_exercises.md) |
| 23 | Linux Interview Questions & Real-World Scenarios | ⬜ | [notes](days/day_23/notes.md) | [source](https://github.com/Sagar2366/linux_the_final_boss/blob/main/Day_23/notes_and_exercises.md) |
| 24 | System Updates & Patching | ⬜ | [notes](days/day_24/notes.md) | [source](https://github.com/Sagar2366/linux_the_final_boss/blob/main/Day_24/notes_and_exercises.md) |
| 25 | System Hardening | ⬜ | [notes](days/day_25/notes.md) | [source](https://github.com/Sagar2366/linux_the_final_boss/blob/main/Day_25/notes_and_exercises.md) |
| 26 | Mega Project: End-to-End DevOps/Linux Challenge | ⬜ | [notes](days/day_26/notes.md) | [source](https://github.com/Sagar2366/linux_the_final_boss/blob/main/Day_26/notes_and_exercises.md) |

### Advanced track (Days 27–31, optional in the course, planned here)

| Day | Topic | Status | My notes | Course material |
| --- | ----- | :----: | -------- | --------------- |
| 27 | Linux Performance Tuning & Optimization (CPU, Memory, I/O, sysctl) | ⬜ | [notes](days/day_27/notes.md) | [source](https://github.com/Sagar2366/linux_the_final_boss/blob/main/Day_27/notes_and_exercises.md) |
| 28 | Linux Containers & Namespaces Internals (namespaces, cgroups, capabilities) | ⬜ | [notes](days/day_28/notes.md) | [source](https://github.com/Sagar2366/linux_the_final_boss/blob/main/Day_28/notes_and_exercises.md) |
| 29 | Advanced Monitoring & Observability (logs, metrics, traces) | ⬜ | [notes](days/day_29/notes.md) | [source](https://github.com/Sagar2366/linux_the_final_boss/blob/main/Day_29/notes_and_exercises.md) |
| 30 | Advanced Security Hardening & Compliance (SELinux/AppArmor, auditd, CIS/STIG) | ⬜ | [notes](days/day_30/notes.md) | [source](https://github.com/Sagar2366/linux_the_final_boss/blob/main/Day_30/notes_and_exercises.md) |
| 31 | Advanced Troubleshooting & Kernel Interaction (strace, perf, eBPF basics) | ⬜ | [notes](days/day_31/notes.md) | [source](https://github.com/Sagar2366/linux_the_final_boss/blob/main/Day_31/notes_and_exercises.md) |

## Weekly reviews

| Week | Days covered | Biggest mistake | Biggest takeaway |
| ---- | ------------ | --------------- | ---------------- |
| 1 | 00–06 | | |
| 2 | 07–13 | | |
| 3 | 14–20 | | |
| 4 | 21–27 | | |
| 5 | 28–31 + project | | |

## Credits

Curriculum by [Sagar2366](https://github.com/Sagar2366/linux_the_final_boss). Everything here is my own
practice and notes written while following it.