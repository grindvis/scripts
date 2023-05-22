# scripts
Various scripts I use for system management

## Install updates
[Script](https://github.com/grindvis/scripts/blob/main/install_updates.sh)

### Usage
Go to crontab (with `sudo crontab -e`) and refer to te script.

For example. Execute the script every sunday at 23:00: `0 23 * * 7 bash /home/user/scripts/install_updates.sh`
