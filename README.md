# Scripts
Various scripts I use for system management

## Install updates

### Simple update script
[install_updates](https://github.com/grindvis/scripts/blob/main/install_updates.sh)

### Simple update script usage
Go to crontab (with `sudo crontab -e`) and refer to te script.

For example. Execute the script every sunday at 23:00: `0 23 * * 7 bash /home/user/scripts/install_updates.sh`

### Unattended upgrades
I first used unattended-upgrades to keep my system's up-to-date. This seemed as intended for various debian based systems. I encountered many situations where I heared my little server. I've jobs which require a high system load, though this is always limited several minutes or at max hours. A quick inspection revealed that one of my containers had a high load for days... The culprit was unattended-upgrades. Always... So this led me to just use a simple script, put it in cron and update once a week.

To uninstall unattended-upgrades use (make sure that there are no updates in progress: `sudo apt remove unattended-upgrades`
