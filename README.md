# setup bash environment

install steps
```
sudo su -
cd /opt/
git clone https://github.com/modernNeo/commands.git
echo '. /opt/commands/env_setter.sh' >> ~/.bashrc
```

## env_setter.sh
 * personalizes PS1
 * adds aliases for cd, vim and ls
 * addds commands to the PATH variable
 * sets the git credential manager

## commands.sh
this is a quick reference script to remind myself of some commands i regularly use to save myself the time of opening up man commands  
Adds reference for
 * getting size of folders
 * various git commands
 * how to install packages from AUR
 * mounting
 * external hard drives [including Macbook] onto Arch  
 * Calls script that mount usb on WSL

## Fix trackpoint on Thinkpad T480
```
 $ cat /etc/profile.d/trackpoint.sh 
#!/bin/sh

echo 255 | sudo tee -a /sys/devices/platform/i8042/serio1/subsystem/devices/serio2/speed
echo 255 | sudo tee -a /sys/devices/platform/i8042/serio1/subsystem/devices/serio2/sensitivity

xinput list-props 'TPPS/2 IBM TrackPoint'
xinput set-prop 'TPPS/2 IBM TrackPoint' 'libinput Accel Speed' 1

 $ sudo tail -5 /etc/sudoers
# See sudoers(5) for more information on "@include" directives:

@includedir /etc/sudoers.d

ALL ALL = NOPASSWD:/etc/profile.d/trackpoint.sh

 $ cat ~/.gnomerc 
  FILE="/sys/devices/platform/i8042/serio1/subsystem/devices/serio2/speed"
  if test -f "$FILE"; then
	  sudo /etc/profile.d/trackpoint.sh
  fi
```

## connect_usb  
Will display the different USB connected to the Windows and lets the user choose which device to mount to WSL
