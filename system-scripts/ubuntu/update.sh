#!/bin/bash

# Update package lists.
sudo apt update

# Update the packages that can be upgraded.
sudo apt upgrade -y

# Remove unnecessary packages and dependencies
sudo apt autoremove -y

# Clean packages cache
sudo apt clean -y

echo "******System updates and upgrades completed successfully.******"
