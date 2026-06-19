#!/bin/bash
# check-failed-logins.sh
# Purpose: Review failed SSH login attempts from Linux auth logs.
# Lab/sanitized example only.

echo "Failed SSH Login Attempts"
echo "-------------------------"

if [ -f /var/log/auth.log ]; then
    grep "Failed password" /var/log/auth.log | tail -20
else
    echo "/var/log/auth.log not found on this system."
fi
