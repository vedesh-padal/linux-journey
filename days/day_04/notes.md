# Day 04 — Linux Boot Process & Service Management
Date: 2026-10-10 | Time spent: 1 hr 20 mins

## In my own words (3–5 lines, no copy-paste)

- learnt about the Linux Boot Process (again) -- seems to be important to understand the foundation
- how the services are started, `systemctl` commands, what all you can do, `journalctl`, `dmesg`, and different flags and commands related to that
- hands-on exercise related to all with nginx, install, configure, systemctl daemon reload, check configuration, stop, check logs, etc. -- did it on free kllrcoda environment

**-> Key commands summary:**
```
# Service management
systemctl status|start|stop|restart <service>
systemctl enable|disable <service>
systemctl list-units --type=service

# Logs and diagnostics
journalctl -u <service>
dmesg
systemd-analyze

# Boot analysis
journalctl -b
systemd-analyze blame
```


## What broke (command → error → fix)

## Surprises / things I got wrong

## Can I do these without looking? (tick off from the repo's exercises)
- [x] Understand the boot process stages
- [x] Can manage services with systemctl commands
- [x] Know how to enable/disable services at boot
- [x] Can view and analyze boot logs
- [x] Understand systemd vs SysVinit differences
- [x] Can troubleshoot basic service issues

## Questions to dig into later