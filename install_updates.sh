#!/bin/bash
# The set -e option instructs bash to immediately exit if any command has a non-zero exit status.
set -e

# Refresh the instlled repositories
apt update -q >> /var/log/apt/automaticupdates.log

# Install updates (prompts will be answered with "yes")
apt upgrade -q -y >> /var/log/apt/automaticupdates.log

# Remove packages that were automatically installed to satisfy dependencies for other packages and are now no longer needed as dependencies changed (prompts will be answered with "yes").
apt autoremove -q -y >> /var/log/apt/automaticupdates.log

exit
