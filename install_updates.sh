#!/bin/bash
# The set -e option instructs bash to immediately exit if any command has a non-zero exit status.
set -e

# Refresh the instlled repositories
apt update

# Install updates (proms will be answered with "yes") 
apt upgrade -y

exit
