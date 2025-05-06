#!/bin/sh
set -e

echo "[*] Detecting package manager..."
if command -v apt &> /dev/null; then
    PM="apt"
    sudo apt update
    sudo apt install -y python python-pip
elif command -v dnf &> /dev/null; then
    PM="dnf"
    sudo dnf install -y python python-pip
else
    echo "[!] Unsupported package manager. Please install Python and pip manually."
    exit 1
fi

echo "[*] Installing Ansible via pip..."
pip install ansible

echo "[*] Installing community.general collection..."
ansible-galaxy collection install community.general

echo "[✓] Bootstrap complete. Add ~/.local/bin to your PATH if not already."

