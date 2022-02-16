#!/bin/bash
echo 'Installing Twister OS Patcher by FlameKat53, Jack47, and RaspberryPiNews...'

problem=$(dpkg -s python3-tk|grep installed)
path=$(pwd)
echo $path
echo Checking for tkinter: $problem
if [ "" == "$problem" ]; then
	sudo apt-get install python3-tk
fi
sudo apt install -y python3-pil python3-pil.imagetk python3-pip
sudo pip3 install wget
#Get archive from github and unzip it
cd ${HOME}
wget https://github.com/FlameKat53/Twister-UI-Patcher/archive/main.zip
unzip main.zip
rm main.zip
sudo rm -r -f ${HOME}/patcher
mv Twister-UI-Patcher-main/ ${HOME}/patcher/
cd ${HOME}/patcher/
python3 c_desktop.py $USER
sudo chmod +x *.sh
cd ${HOME}/patcher/src/
sudo chmod +x *.sh
#crontab -l | { cat; echo "0 11 * * * /bin/bash -c "/home/pi/patcher/src/patchpopup.sh""; } | crontab -

cd ${HOME}/patcher
rm README.md CODE_OF_CONDUCT.md CONTRIBUTING.md
#rm -r .github

#Adds commands
sudo rm -f /usr/local/bin/twistpatch
sudo rm -f /usr/local/bin/twistpatch-uninstall
sudo rm -f /usr/local/bin/twistpatch-remove
sudo rm -f /usr/local/bin/twistpatch-update

if [ ! -f "/usr/local/bin/twistpatch" ]; then
    sudo ln -s ${HOME}/patcher/src/start.sh /usr/local/bin/twistpatch
    sudo chmod +x /usr/local/bin/twistpatch
fi
