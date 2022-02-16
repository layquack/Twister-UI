#!/bin/bash
echo 'Uninstalling Twister UI Patcher by FlameKat53, Jack47 and MobileGamesMotionYT...'
echo 'Thanks for using me! You can install me again at "https://bit.ly/patchtwist"'
cd ${HOME}

#Checks to see if these files exist and replace or remove them
  sudo rm -r ${HOME}/patcher/
  # we need sudo for the pycache files
if [ -f ${HOME}/.local/share/applications/patcher.desktop ]; then
  sudo rm ${HOME}/.local/share/applications/patcher.desktop
fi
if [ -f ${HOME}/Desktop/patcher.desktop ]; then
  sudo rm ${HOME}/Desktop/patcher.desktop
fi
sudo rm -f /usr/local/bin/twistpatch
sudo rm -f /usr/local/bin/twistpatch-update
sudo rm -f /usr/local/bin/twistpatch-remove
#crontab -l | grep -v notifysend | crontab -
echo 'Uninstalled.'
