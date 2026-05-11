#!/bin/bash

# Self-elevation: if not root, re-run with sudo
if [[ $EUID -ne 0 ]]; then
   echo "Requesting administrative privileges..."
   exec sudo "$0" "$@"
fi

echo "------------------------------------------"
echo "Starting swap clearance..."
echo "------------------------------------------"

# 1. Attempt to disable swap (moves data to RAM)
if swapoff -a; then
    echo "[OK] Swap successfully disabled and cleared."
    
    # 2. Attempt to re-enable swap
    if swapon -a; then
        echo "[OK] Swap successfully re-enabled."
    else
        echo "[ERROR] Failed to re-enable swap!"
        exit 1
    fi
else
    echo "[ERROR] Could not clear swap."
    echo "Reason: Likely insufficient free RAM to offload swap data."
    exit 1
fi

echo "------------------------------------------"
echo "Memory maintenance complete."
