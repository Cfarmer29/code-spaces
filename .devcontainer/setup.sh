#!/bin/bash
set -e

# Install XFCE4 - a lightweight graphical desktop environment
sudo apt-get update -y
sudo apt-get install -y --no-install-recommends \
    xfce4 \
    xfce4-goodies \
    dbus-x11

# Configure VNC to launch XFCE4 instead of the default window manager
mkdir -p ~/.vnc
cat > ~/.vnc/xstartup << 'EOF'
#!/bin/bash
unset SESSION_MANAGER
unset DBUS_SESSION_BUS_ADDRESS
exec startxfce4
EOF
chmod 700 ~/.vnc/xstartup
