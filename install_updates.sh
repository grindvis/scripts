#!/bin/bash
# The set -e option instructs bash to immediately exit if any command has a non-zero exit status.
set -e

# Set the location where the logfiles will be saved.
logging="/var/log/apt/automaticupdates.log"

# Set a prompt so the it can be retrieved when the updates are instlled. 
echo -e "***************************************************************************************\n\
Automatic update start `date +%Y-%m-%d" "%H:%M:%S`\n\
***************************************************************************************" >> $logging

# Refresh the instlled repositories
apt-get update -q >> $logging

# Install updates (prompts will be answered with "yes")
apt-get upgrade -q -y >> $logging

# Remove packages that were automatically installed to satisfy dependencies for other packages and are now no longer needed as dependencies changed (prompts will be answered with "yes").
apt-get autoremove -q -y >> $logging

exit
