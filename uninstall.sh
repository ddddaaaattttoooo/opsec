#!/bin/sh
# Uninstall opsec

set -e

if [ "$(id -u)" -ne 0 ]; then
    echo "Run with sudo: sudo ./uninstall.sh"
    exit 1
fi

rm -f /usr/local/bin/opsec
echo "opsec removed. you're on your own now."
