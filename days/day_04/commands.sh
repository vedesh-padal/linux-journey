ls -la /etc/systemd/system/

bat ~/.profile

systemctl status docker

systemctl stop docker

systemctl start docker

echo $0

echo $?

systemctl is-enabled docker

systemctl list-units --type=service        # List all services

journalctl -u docker -f

journalctl -b -p err

journalctl --list-boots

# FROM THE author's notes:

## Service Management with systemd:

# Service control
systemctl status <service>     # Show service status
systemctl start <service>      # Start a service
systemctl stop <service>       # Stop a service
systemctl restart <service>    # Restart a service
systemctl reload <service>     # Reload config without restart

# Boot management
systemctl enable <service>     # Enable service at boot
systemctl disable <service>    # Disable service at boot
systemctl is-enabled <service> # Check if enabled

# Information
systemctl list-units --type=service        # List all services
systemctl list-units --state=failed        # List failed services
systemctl list-unit-files --type=service   # List all service files

# Logs
journalctl -u <service>        # View logs for service
journalctl -u <service> -f     # Follow logs in real-time
journalctl -b                  # Boot logs

## Checking Boot Logs:

# Kernel messages
dmesg                    # Kernel ring buffer
dmesg | grep -i error    # Filter for errors
dmesg -T                 # Human-readable timestamps

# System logs
journalctl -b            # Current boot logs
journalctl -b -1         # Previous boot logs
journalctl --list-boots  # List all boots
journalctl -p err        # Error priority and above
journalctl --since "1 hour ago"  # Recent logs

sudo systemctl reload nginx

sudo systemctl enable --now nginx

# Show Startup Time Impact (Optional)
systemd-analyze blame | grep -i nginx || true 

## related to nginx:

# Create a Drop-In Override (Customization)
# Add environment variable or change restart policy without editing the main unit:

sudo systemctl edit nginx

# Add:
# ```
# [Service]
# Environment=APP_ENV=demo
# ```
# #Then:

sudo systemctl daemon-reload
sudo systemctl restart nginx
systemctl show nginx | grep -i APP_ENV

systemctl status nginx --no-pager

sudo rm -rf /var/log/nginx /etc/nginx

journalctl -u nginx -n 20