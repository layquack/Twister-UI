#!/bin/bash
#Uninstalls and reinstalls the patcher
bash ~/patcher/uninstall.sh
cd ${HOME}
wget https://raw.githubusercontent.com/FlameKat53/Twister-UI-Patcher/main/install.sh
chmod +x ./install.sh
./install.sh
cd ${HOME}
rm install.sh
