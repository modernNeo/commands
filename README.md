# setup bash environment

install steps
```
sudo su -
cd /opt/
git clone https://github.com/modernNeo/commands.git

if linux
ln -sn /opt/commands/commands.sh /usr/bin/commands
ln -sn /opt/commands/update_commands.sh /usr/bin/update_commands

if mac
ln -sn /opt/commands/commands.sh ~/.bin/commands
ln -sn /opt/commands/update_commands.sh ~/.bin/update_commands

```

## env_setter.sh
 * personalizes PS1
 * adds aliases for cd, vim and ls
 * addds command to invoke "commands.sh"

## commands.sh
this is a quick reference script to remind myself of some commands i regularly use to save myself the time of opening up man commands  
Adds reference for
 * getting size of folders
 * various git commands
 * how to install packages from AUR
 * mounting
 * external hard drives [including Macbook] onto Arch  
 * Calls script that mount usb on WSL

## connect_usb  
Will display the different USB connected to the Windows and lets the user choose which device to mount to WSL
