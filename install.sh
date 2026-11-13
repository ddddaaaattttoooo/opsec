#!/bin/sh
# opsec installer v1.2.5
# Installs opsec to /usr/local/bin (Linux/macOS)

set -e

INSTALL_DIR="/usr/local/bin"

if [ "$(id -u)" -ne 0 ]; then
    echo "Run with sudo: sudo ./install.sh"
    exit 1
fi

echo "Installing opsec to ${INSTALL_DIR}..."
cp opsec "${INSTALL_DIR}/opsec"
chmod 755 "${INSTALL_DIR}/opsec"
echo "Done! Run 'opsec install' to get started."
