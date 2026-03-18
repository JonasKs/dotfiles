#!/bin/bash
set -e

SUDO_LOCAL="/etc/pam.d/sudo_local"

if [ ! -f "$SUDO_LOCAL" ] || ! grep -q "pam_tid.so" "$SUDO_LOCAL"; then
  echo "Setting up Touch ID for sudo..."
  sudo tee "$SUDO_LOCAL" > /dev/null <<'PAMEOF'
# sudo_local: local config file which survives system update and is included for sudo
# uncomment following line to enable Touch ID for sudo
auth       sufficient     pam_tid.so
PAMEOF
  echo "Touch ID for sudo enabled."
else
  echo "Touch ID for sudo already configured."
fi
