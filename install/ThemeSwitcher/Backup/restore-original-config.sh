#!/bin/bash
read -p "This will restore your original Twister OS theme configurations. Press [Ctrl-C] to cancel, or [Enter] to continue..."
PS3='Please enter the number above for theme are you are currently running (1 - 13): '
options=("TwisterOS" "TwisterOS-Dark" "Raspbian95" "RaspbianXP" "Raspbian7" "RaspbianX" "Nighthawk" "Twister11" "Twister11-Dark" "iRaspbian" "iRaspbian-Dark" "iRaspbianSur" "iRaspbianSur-Dark")
select opt in "${options[@]}"
do
case $opt in


"TwisterOS")

echo "Restoring default Twister OS theme..."

sudo rm -r /usr/share/ThemeSwitcher/TwisterOS/panel
sudo rm -r /usr/share/ThemeSwitcher/TwisterOS/xfconf
sudo cp -r /usr/share/ThemeSwitcher/Backup/TwisterOS/panel /usr/share/ThemeSwitcher/TwisterOS
sudo cp -r /usr/share/ThemeSwitcher/Backup/TwisterOS/xfconf /usr/share/ThemeSwitcher/TwisterOS
sudo find /usr/share/ThemeSwitcher/TwisterOS/panel -type d -exec chmod 755 {} \;
sudo find /usr/share/ThemeSwitcher/TwisterOS/panel -type f -exec chmod 644 {} \;
sudo find /usr/share/ThemeSwitcher/TwisterOS/xfconf -type d -exec chmod 755 {} \;
sudo find /usr/share/ThemeSwitcher/TwisterOS/xfconf -type f -exec chmod 644 {} \;
sudo chown -R root:root /usr/share/ThemeSwitcher/TwisterOS/panel
sudo chown -R root:root /usr/share/ThemeSwitcher/TwisterOS/xfconf
pkill xfce4-panel
sudo rm -r ~/.config/xfce4/panel
sudo rm -r ~/.config/xfce4/xfconf
sudo cp -r /usr/share/ThemeSwitcher/TwisterOS/panel ~/.config/xfce4
sudo cp -r /usr/share/ThemeSwitcher/TwisterOS/xfconf ~/.config/xfce4
sudo find ~/.config/xfce4/panel -type d -exec chmod 755 {} \;
sudo find ~/.config/xfce4/panel -type f -exec chmod 644 {} \;
sudo find ~/.config/xfce4/xfconf -type d -exec chmod 755 {} \;
sudo find ~/.config/xfce4/xfconf -type f -exec chmod 644 {} \;
sudo chown -R $USER:$USER ~/.config/xfce4/panel
sudo chown -R $USER:$USER ~/.config/xfce4/xfconf
xfconf-query -c xfwm4 -p /general/theme -s TwisterOS
xfconf-query -c xfwm4 -p /general/title_alignment -s center
xfconf-query -c xfwm4 -p /general/title_font -s "Noto Sans Bold 11"
xfconf-query -c xfwm4 -p /general/button_layout -s "O|HMC"
xfconf-query -c xsettings -p /Gtk/CursorThemeName -s default
xfconf-query -c xsettings -p /Gtk/FontName -s "Noto Sans 11"
xfconf-query -c xsettings -p /Net/IconThemeName -s TwisterOS
xfconf-query -c xsettings -p /Net/ThemeName -s TwisterOS
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitor0/workspace0/last-image -s /usr/share/backgrounds/TwisterOS.png
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitor1/workspace0/last-image -s /usr/share/backgrounds/TwisterOS.png
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorHDMI/workspace0/last-image -s /usr/share/backgrounds/TwisterOS.png
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorHDMI1/workspace0/last-image -s /usr/share/backgrounds/TwisterOS.png
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorHDMI2/workspace0/last-image -s /usr/share/backgrounds/TwisterOS.png
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorHDMI-1/workspace0/last-image -s /usr/share/backgrounds/TwisterOS.png
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorHDMI-2/workspace0/last-image -s /usr/share/backgrounds/TwisterOS.png
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorVirtual1/workspace0/last-image -s /usr/share/backgrounds/TwisterOS.png
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitoreDP/workspace0/last-image -s /usr/share/backgrounds/TwisterOS.png
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitoreDP1/workspace0/last-image -s /usr/share/backgrounds/TwisterOS.png
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitoreDP2/workspace0/last-image -s /usr/share/backgrounds/TwisterOS.png
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitoreDP-1/workspace0/last-image -s /usr/share/backgrounds/TwisterOS.png
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitoreDP-2/workspace0/last-image -s /usr/share/backgrounds/TwisterOS.png
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorLVDS/workspace0/last-image -s /usr/share/backgrounds/TwisterOS.png
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorLVDS1/workspace0/last-image -s /usr/share/backgrounds/TwisterOS.png
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorLVDS2/workspace0/last-image -s /usr/share/backgrounds/TwisterOS.png
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorLVDS-1/workspace0/last-image -s /usr/share/backgrounds/TwisterOS.png
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorLVDS-2/workspace0/last-image -s /usr/share/backgrounds/TwisterOS.png
break;;


"TwisterOS-Dark")

echo "Restoring default Twister OS Dark theme..."

sudo rm -r /usr/share/ThemeSwitcher/TwisterOS-Dark/panel
sudo rm -r /usr/share/ThemeSwitcher/TwisterOS-Dark/xfconf
sudo cp -r /usr/share/ThemeSwitcher/Backup/TwisterOS-Dark/panel /usr/share/ThemeSwitcher/TwisterOS-Dark
sudo cp -r /usr/share/ThemeSwitcher/Backup/TwisterOS-Dark/xfconf /usr/share/ThemeSwitcher/TwisterOS-Dark
sudo find /usr/share/ThemeSwitcher/TwisterOS-Dark/panel -type d -exec chmod 755 {} \;
sudo find /usr/share/ThemeSwitcher/TwisterOS-Dark/panel -type f -exec chmod 644 {} \;
sudo find /usr/share/ThemeSwitcher/TwisterOS-Dark/xfconf -type d -exec chmod 755 {} \;
sudo find /usr/share/ThemeSwitcher/TwisterOS-Dark/xfconf -type f -exec chmod 644 {} \;
sudo chown -R root:root /usr/share/ThemeSwitcher/TwisterOS-Dark/panel
sudo chown -R root:root /usr/share/ThemeSwitcher/TwisterOS-Dark/xfconf
pkill xfce4-panel
sudo rm -r ~/.config/xfce4/panel
sudo rm -r ~/.config/xfce4/xfconf
sudo cp -r /usr/share/ThemeSwitcher/TwisterOS-Dark/panel ~/.config/xfce4
sudo cp -r /usr/share/ThemeSwitcher/TwisterOS-Dark/xfconf ~/.config/xfce4
sudo find ~/.config/xfce4/panel -type d -exec chmod 755 {} \;
sudo find ~/.config/xfce4/panel -type f -exec chmod 644 {} \;
sudo find ~/.config/xfce4/xfconf -type d -exec chmod 755 {} \;
sudo find ~/.config/xfce4/xfconf -type f -exec chmod 644 {} \;
sudo chown -R $USER:$USER ~/.config/xfce4/panel
sudo chown -R $USER:$USER ~/.config/xfce4/xfconf
xfconf-query -c xfwm4 -p /general/theme -s TwisterOS-Dark
xfconf-query -c xfwm4 -p /general/title_alignment -s center
xfconf-query -c xfwm4 -p /general/title_font -s "Noto Sans Bold 11"
xfconf-query -c xfwm4 -p /general/button_layout -s "O|HMC"
xfconf-query -c xsettings -p /Gtk/CursorThemeName -s default
xfconf-query -c xsettings -p /Gtk/FontName -s "Noto Sans 11"
xfconf-query -c xsettings -p /Net/IconThemeName -s TwisterOS
xfconf-query -c xsettings -p /Net/ThemeName -s TwisterOS-Dark
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitor0/workspace0/last-image -s /usr/share/backgrounds/TwisterOS.png
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitor1/workspace0/last-image -s /usr/share/backgrounds/TwisterOS.png
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorHDMI/workspace0/last-image -s /usr/share/backgrounds/TwisterOS.png
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorHDMI1/workspace0/last-image -s /usr/share/backgrounds/TwisterOS.png
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorHDMI2/workspace0/last-image -s /usr/share/backgrounds/TwisterOS.png
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorHDMI-1/workspace0/last-image -s /usr/share/backgrounds/TwisterOS.png
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorHDMI-2/workspace0/last-image -s /usr/share/backgrounds/TwisterOS.png
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorVirtual1/workspace0/last-image -s /usr/share/backgrounds/TwisterOS.png
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitoreDP/workspace0/last-image -s /usr/share/backgrounds/TwisterOS.png
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitoreDP1/workspace0/last-image -s /usr/share/backgrounds/TwisterOS.png
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitoreDP2/workspace0/last-image -s /usr/share/backgrounds/TwisterOS.png
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitoreDP-1/workspace0/last-image -s /usr/share/backgrounds/TwisterOS.png
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitoreDP-2/workspace0/last-image -s /usr/share/backgrounds/TwisterOS.png
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorLVDS/workspace0/last-image -s /usr/share/backgrounds/TwisterOS.png
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorLVDS1/workspace0/last-image -s /usr/share/backgrounds/TwisterOS.png
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorLVDS2/workspace0/last-image -s /usr/share/backgrounds/TwisterOS.png
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorLVDS-1/workspace0/last-image -s /usr/share/backgrounds/TwisterOS.png
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorLVDS-2/workspace0/last-image -s /usr/share/backgrounds/TwisterOS.png
break;;


"Raspbian95")

echo "Restoring default Twister 95 theme..."

sudo rm -r /usr/share/ThemeSwitcher/Raspbian95/panel
sudo rm -r /usr/share/ThemeSwitcher/Raspbian95/xfconf
sudo cp -r /usr/share/ThemeSwitcher/Backup/Raspbian95/panel /usr/share/ThemeSwitcher/Raspbian95
sudo cp -r /usr/share/ThemeSwitcher/Backup/Raspbian95/xfconf /usr/share/ThemeSwitcher/Raspbian95
sudo find /usr/share/ThemeSwitcher/Raspbian95/panel -type d -exec chmod 755 {} \;
sudo find /usr/share/ThemeSwitcher/Raspbian95/panel -type f -exec chmod 644 {} \;
sudo find /usr/share/ThemeSwitcher/Raspbian95/xfconf -type d -exec chmod 755 {} \;
sudo find /usr/share/ThemeSwitcher/Raspbian95/xfconf -type f -exec chmod 644 {} \;
sudo chown -R root:root /usr/share/ThemeSwitcher/Raspbian95/panel
sudo chown -R root:root /usr/share/ThemeSwitcher/Raspbian95/xfconf
pkill xfce4-panel
sudo rm -r ~/.config/xfce4/panel
sudo rm -r ~/.config/xfce4/xfconf
sudo cp -r /usr/share/ThemeSwitcher/Raspbian95/panel ~/.config/xfce4
sudo cp -r /usr/share/ThemeSwitcher/Raspbian95/xfconf ~/.config/xfce4
sudo find ~/.config/xfce4/panel -type d -exec chmod 755 {} \;
sudo find ~/.config/xfce4/panel -type f -exec chmod 644 {} \;
sudo find ~/.config/xfce4/xfconf -type d -exec chmod 755 {} \;
sudo find ~/.config/xfce4/xfconf -type f -exec chmod 644 {} \;
sudo chown -R $USER:$USER ~/.config/xfce4/panel
sudo chown -R $USER:$USER ~/.config/xfce4/xfconf
xfconf-query -c xfwm4 -p /general/theme -s Windows-95
xfconf-query -c xfwm4 -p /general/title_alignment -s left
xfconf-query -c xfwm4 -p /general/title_font -s "W95FA Bold 11"
xfconf-query -c xfwm4 -p /general/button_layout -s "O|HMC"
xfconf-query -c xsettings -p /Gtk/CursorThemeName -s Win95
xfconf-query -c xsettings -p /Gtk/FontName -s "W95FA 12"
xfconf-query -c xsettings -p /Net/IconThemeName -s Windows-95
xfconf-query -c xsettings -p /Net/ThemeName -s Windows-95
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitor0/workspace0/last-image -s /usr/share/backgrounds/Clouds.png
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitor1/workspace0/last-image -s /usr/share/backgrounds/Clouds.png
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorHDMI/workspace0/last-image -s /usr/share/backgrounds/Clouds.png
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorHDMI1/workspace0/last-image -s /usr/share/backgrounds/Clouds.png
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorHDMI2/workspace0/last-image -s /usr/share/backgrounds/Clouds.png
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorHDMI-1/workspace0/last-image -s /usr/share/backgrounds/Clouds.png
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorHDMI-2/workspace0/last-image -s /usr/share/backgrounds/Clouds.png
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorVirtual1/workspace0/last-image -s /usr/share/backgrounds/Clouds.png
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitoreDP/workspace0/last-image -s /usr/share/backgrounds/Clouds.png
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitoreDP1/workspace0/last-image -s /usr/share/backgrounds/Clouds.png
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitoreDP2/workspace0/last-image -s /usr/share/backgrounds/Clouds.png
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitoreDP-1/workspace0/last-image -s /usr/share/backgrounds/Clouds.png
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitoreDP-2/workspace0/last-image -s /usr/share/backgrounds/Clouds.png
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorLVDS/workspace0/last-image -s /usr/share/backgrounds/Clouds.png
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorLVDS1/workspace0/last-image -s /usr/share/backgrounds/Clouds.png
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorLVDS2/workspace0/last-image -s /usr/share/backgrounds/Clouds.png
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorLVDS-1/workspace0/last-image -s /usr/share/backgrounds/Clouds.png
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorLVDS-2/workspace0/last-image -s /usr/share/backgrounds/Clouds.png
break;;


"RaspbianXP")

echo "Restoring default Twister XP theme..."

sudo rm -r /usr/share/ThemeSwitcher/RaspbianXP/panel
sudo rm -r /usr/share/ThemeSwitcher/RaspbianXP/xfconf
sudo cp -r /usr/share/ThemeSwitcher/Backup/RaspbianXP/panel /usr/share/ThemeSwitcher/RaspbianXP
sudo cp -r /usr/share/ThemeSwitcher/Backup/RaspbianXP/xfconf /usr/share/ThemeSwitcher/RaspbianXP
sudo find /usr/share/ThemeSwitcher/RaspbianXP/panel -type d -exec chmod 755 {} \;
sudo find /usr/share/ThemeSwitcher/RaspbianXP/panel -type f -exec chmod 644 {} \;
sudo find /usr/share/ThemeSwitcher/RaspbianXP/xfconf -type d -exec chmod 755 {} \;
sudo find /usr/share/ThemeSwitcher/RaspbianXP/xfconf -type f -exec chmod 644 {} \;
sudo chown -R root:root /usr/share/ThemeSwitcher/RaspbianXP/panel
sudo chown -R root:root /usr/share/ThemeSwitcher/RaspbianXP/xfconf
pkill xfce4-panel
sudo rm -r ~/.config/xfce4/panel
sudo rm -r ~/.config/xfce4/xfconf
sudo cp -r /usr/share/ThemeSwitcher/RaspbianXP/panel ~/.config/xfce4
sudo cp -r /usr/share/ThemeSwitcher/RaspbianXP/xfconf ~/.config/xfce4
sudo find ~/.config/xfce4/panel -type d -exec chmod 755 {} \;
sudo find ~/.config/xfce4/panel -type f -exec chmod 644 {} \;
sudo find ~/.config/xfce4/xfconf -type d -exec chmod 755 {} \;
sudo find ~/.config/xfce4/xfconf -type f -exec chmod 644 {} \;
sudo chown -R $USER:$USER ~/.config/xfce4/panel
sudo chown -R $USER:$USER ~/.config/xfce4/xfconf
xfconf-query -c xfwm4 -p /general/theme -s Windows-XP
xfconf-query -c xfwm4 -p /general/title_alignment -s left
xfconf-query -c xfwm4 -p /general/title_font -s "Noto Sans Display Bold 11"
xfconf-query -c xfwm4 -p /general/button_layout -s "O|HMC"
xfconf-query -c xsettings -p /Gtk/CursorThemeName -s Win95
xfconf-query -c xsettings -p /Gtk/FontName -s "Noto Sans Display 11"
xfconf-query -c xsettings -p /Net/IconThemeName -s Windows-XP
xfconf-query -c xsettings -p /Net/ThemeName -s Windows-XP
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitor0/workspace0/last-image -s /usr/share/backgrounds/RaspbianXP.jpg
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitor1/workspace0/last-image -s /usr/share/backgrounds/RaspbianXP.jpg
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorHDMI/workspace0/last-image -s /usr/share/backgrounds/RaspbianXP.jpg
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorHDMI1/workspace0/last-image -s /usr/share/backgrounds/RaspbianXP.jpg
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorHDMI2/workspace0/last-image -s /usr/share/backgrounds/RaspbianXP.jpg
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorHDMI-1/workspace0/last-image -s /usr/share/backgrounds/RaspbianXP.jpg
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorHDMI-2/workspace0/last-image -s /usr/share/backgrounds/RaspbianXP.jpg
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorVirtual1/workspace0/last-image -s /usr/share/backgrounds/RaspbianXP.jpg
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitoreDP/workspace0/last-image -s /usr/share/backgrounds/RaspbianXP.jpg
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitoreDP1/workspace0/last-image -s /usr/share/backgrounds/RaspbianXP.jpg
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitoreDP2/workspace0/last-image -s /usr/share/backgrounds/RaspbianXP.jpg
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitoreDP-1/workspace0/last-image -s /usr/share/backgrounds/RaspbianXP.jpg
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitoreDP-2/workspace0/last-image -s /usr/share/backgrounds/RaspbianXP.jpg
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorLVDS/workspace0/last-image -s /usr/share/backgrounds/RaspbianXP.jpg
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorLVDS1/workspace0/last-image -s /usr/share/backgrounds/RaspbianXP.jpg
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorLVDS2/workspace0/last-image -s /usr/share/backgrounds/RaspbianXP.jpg
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorLVDS-1/workspace0/last-image -s /usr/share/backgrounds/RaspbianXP.jpg
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorLVDS-2/workspace0/last-image -s /usr/share/backgrounds/RaspbianXP.jpg
break;;


"Raspbian7")

echo "Restoring default Twister 7 theme..."

sudo rm -r /usr/share/ThemeSwitcher/Raspbian7/panel
sudo rm -r /usr/share/ThemeSwitcher/Raspbian7/xfconf
sudo cp -r /usr/share/ThemeSwitcher/Backup/Raspbian7/panel /usr/share/ThemeSwitcher/Raspbian7
sudo cp -r /usr/share/ThemeSwitcher/Backup/Raspbian7/xfconf /usr/share/ThemeSwitcher/Raspbian7
sudo find /usr/share/ThemeSwitcher/Raspbian7/panel -type d -exec chmod 755 {} \;
sudo find /usr/share/ThemeSwitcher/Raspbian7/panel -type f -exec chmod 644 {} \;
sudo find /usr/share/ThemeSwitcher/Raspbian7/xfconf -type d -exec chmod 755 {} \;
sudo find /usr/share/ThemeSwitcher/Raspbian7/xfconf -type f -exec chmod 644 {} \;
sudo chown -R root:root /usr/share/ThemeSwitcher/Raspbian7/panel
sudo chown -R root:root /usr/share/ThemeSwitcher/Raspbian7/xfconf
pkill xfce4-panel
sudo rm -r ~/.config/xfce4/panel
sudo rm -r ~/.config/xfce4/xfconf
sudo cp -r /usr/share/ThemeSwitcher/Raspbian7/panel ~/.config/xfce4
sudo cp -r /usr/share/ThemeSwitcher/Raspbian7/xfconf ~/.config/xfce4
sudo find ~/.config/xfce4/panel -type d -exec chmod 755 {} \;
sudo find ~/.config/xfce4/panel -type f -exec chmod 644 {} \;
sudo find ~/.config/xfce4/xfconf -type d -exec chmod 755 {} \;
sudo find ~/.config/xfce4/xfconf -type f -exec chmod 644 {} \;
sudo chown -R $USER:$USER ~/.config/xfce4/panel
sudo chown -R $USER:$USER ~/.config/xfce4/xfconf
xfconf-query -c xfwm4 -p /general/theme -s Windows-7-Sky
xfconf-query -c xfwm4 -p /general/title_alignment -s left
xfconf-query -c xfwm4 -p /general/title_font -s "WeblySleek UI Semi-Bold 12"
xfconf-query -c xfwm4 -p /general/button_layout -s "O|HMC"
xfconf-query -c xsettings -p /Gtk/CursorThemeName -s Win10
xfconf-query -c xsettings -p /Gtk/FontName -s "WeblySleek UI Semi-Bold 12"
xfconf-query -c xsettings -p /Net/IconThemeName -s Windows-7
xfconf-query -c xsettings -p /Net/ThemeName -s Windows-7
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitor0/workspace0/last-image -s /usr/share/backgrounds/Raspbian7.png
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitor1/workspace0/last-image -s /usr/share/backgrounds/Raspbian7.png
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorHDMI/workspace0/last-image -s /usr/share/backgrounds/Raspbian7.png
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorHDMI1/workspace0/last-image -s /usr/share/backgrounds/Raspbian7.png
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorHDMI2/workspace0/last-image -s /usr/share/backgrounds/Raspbian7.png
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorHDMI-1/workspace0/last-image -s /usr/share/backgrounds/Raspbian7.png
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorHDMI-2/workspace0/last-image -s /usr/share/backgrounds/Raspbian7.png
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorVirtual1/workspace0/last-image -s /usr/share/backgrounds/Raspbian7.png
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitoreDP/workspace0/last-image -s /usr/share/backgrounds/Raspbian7.png
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitoreDP1/workspace0/last-image -s /usr/share/backgrounds/Raspbian7.png
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitoreDP2/workspace0/last-image -s /usr/share/backgrounds/Raspbian7.png
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitoreDP-1/workspace0/last-image -s /usr/share/backgrounds/Raspbian7.png
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitoreDP-2/workspace0/last-image -s /usr/share/backgrounds/Raspbian7.png
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorLVDS/workspace0/last-image -s /usr/share/backgrounds/Raspbian7.png
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorLVDS1/workspace0/last-image -s /usr/share/backgrounds/Raspbian7.png
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorLVDS2/workspace0/last-image -s /usr/share/backgrounds/Raspbian7.png
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorLVDS-1/workspace0/last-image -s /usr/share/backgrounds/Raspbian7.png
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorLVDS-2/workspace0/last-image -s /usr/share/backgrounds/Raspbian7.png
break;;


"RaspbianX")

echo "Restoring default Twister 10 theme..."

sudo rm -r /usr/share/ThemeSwitcher/RaspbianX/panel
sudo rm -r /usr/share/ThemeSwitcher/RaspbianX/xfconf
sudo cp -r /usr/share/ThemeSwitcher/Backup/RaspbianX/panel /usr/share/ThemeSwitcher/RaspbianX
sudo cp -r /usr/share/ThemeSwitcher/Backup/RaspbianX/xfconf /usr/share/ThemeSwitcher/RaspbianX
sudo find /usr/share/ThemeSwitcher/RaspbianX/panel -type d -exec chmod 755 {} \;
sudo find /usr/share/ThemeSwitcher/RaspbianX/panel -type f -exec chmod 644 {} \;
sudo find /usr/share/ThemeSwitcher/RaspbianX/xfconf -type d -exec chmod 755 {} \;
sudo find /usr/share/ThemeSwitcher/RaspbianX/xfconf -type f -exec chmod 644 {} \;
sudo chown -R root:root /usr/share/ThemeSwitcher/RaspbianX/panel
sudo chown -R root:root /usr/share/ThemeSwitcher/RaspbianX/xfconf
pkill xfce4-panel
sudo rm -r ~/.config/xfce4/panel
sudo rm -r ~/.config/xfce4/xfconf
sudo cp -r /usr/share/ThemeSwitcher/RaspbianX/panel ~/.config/xfce4
sudo cp -r /usr/share/ThemeSwitcher/RaspbianX/xfconf ~/.config/xfce4
sudo find ~/.config/xfce4/panel -type d -exec chmod 755 {} \;
sudo find ~/.config/xfce4/panel -type f -exec chmod 644 {} \;
sudo find ~/.config/xfce4/xfconf -type d -exec chmod 755 {} \;
sudo find ~/.config/xfce4/xfconf -type f -exec chmod 644 {} \;
sudo chown -R $USER:$USER ~/.config/xfce4/panel
sudo chown -R $USER:$USER ~/.config/xfce4/xfconf
xfconf-query -c xfwm4 -p /general/theme -s Windows-10
xfconf-query -c xfwm4 -p /general/title_alignment -s left
xfconf-query -c xfwm4 -p /general/title_font -s "WeblySleek UI Semi-Bold 12"
xfconf-query -c xfwm4 -p /general/button_layout -s "O|HMC"
xfconf-query -c xsettings -p /Gtk/CursorThemeName -s Win10
xfconf-query -c xsettings -p /Gtk/FontName -s "WeblySleek UI Semi-Bold 12"
xfconf-query -c xsettings -p /Net/IconThemeName -s Windows-10
xfconf-query -c xsettings -p /Net/ThemeName -s Windows-10
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitor0/workspace0/last-image -s /usr/share/backgrounds/Twister10.png
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitor1/workspace0/last-image -s /usr/share/backgrounds/Twister10.png
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorHDMI/workspace0/last-image -s /usr/share/backgrounds/Twister10.png
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorHDMI1/workspace0/last-image -s /usr/share/backgrounds/Twister10.png
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorHDMI2/workspace0/last-image -s /usr/share/backgrounds/Twister10.png
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorHDMI-1/workspace0/last-image -s /usr/share/backgrounds/Twister10.png
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorHDMI-2/workspace0/last-image -s /usr/share/backgrounds/Twister10.png
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorVirtual1/workspace0/last-image -s /usr/share/backgrounds/Twister10.png
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitoreDP/workspace0/last-image -s /usr/share/backgrounds/Twister10.png
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitoreDP1/workspace0/last-image -s /usr/share/backgrounds/Twister10.png
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitoreDP2/workspace0/last-image -s /usr/share/backgrounds/Twister10.png
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitoreDP-1/workspace0/last-image -s /usr/share/backgrounds/Twister10.png
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitoreDP-2/workspace0/last-image -s /usr/share/backgrounds/Twister10.png
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorLVDS/workspace0/last-image -s /usr/share/backgrounds/Twister10.png
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorLVDS1/workspace0/last-image -s /usr/share/backgrounds/Twister10.png
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorLVDS2/workspace0/last-image -s /usr/share/backgrounds/Twister10.png
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorLVDS-1/workspace0/last-image -s /usr/share/backgrounds/Twister10.png
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorLVDS-2/workspace0/last-image -s /usr/share/backgrounds/Twister10.png
break;;


"Nighthawk")

echo "Restoring default Twister 10 Dark theme..."

sudo rm -r /usr/share/ThemeSwitcher/Nighthawk/panel
sudo rm -r /usr/share/ThemeSwitcher/Nighthawk/xfconf
sudo cp -r /usr/share/ThemeSwitcher/Backup/Nighthawk/panel /usr/share/ThemeSwitcher/Nighthawk
sudo cp -r /usr/share/ThemeSwitcher/Backup/Nighthawk/xfconf /usr/share/ThemeSwitcher/Nighthawk
sudo find /usr/share/ThemeSwitcher/Nighthawk/panel -type d -exec chmod 755 {} \;
sudo find /usr/share/ThemeSwitcher/Nighthawk/panel -type f -exec chmod 644 {} \;
sudo find /usr/share/ThemeSwitcher/Nighthawk/xfconf -type d -exec chmod 755 {} \;
sudo find /usr/share/ThemeSwitcher/Nighthawk/xfconf -type f -exec chmod 644 {} \;
sudo chown -R root:root /usr/share/ThemeSwitcher/Nighthawk/panel
sudo chown -R root:root /usr/share/ThemeSwitcher/Nighthawk/xfconf
pkill xfce4-panel
sudo rm -r ~/.config/xfce4/panel
sudo rm -r ~/.config/xfce4/xfconf
sudo cp -r /usr/share/ThemeSwitcher/Nighthawk/panel ~/.config/xfce4
sudo cp -r /usr/share/ThemeSwitcher/Nighthawk/xfconf ~/.config/xfce4
sudo find ~/.config/xfce4/panel -type d -exec chmod 755 {} \;
sudo find ~/.config/xfce4/panel -type f -exec chmod 644 {} \;
sudo find ~/.config/xfce4/xfconf -type d -exec chmod 755 {} \;
sudo find ~/.config/xfce4/xfconf -type f -exec chmod 644 {} \;
sudo chown -R $USER:$USER ~/.config/xfce4/panel
sudo chown -R $USER:$USER ~/.config/xfce4/xfconf
xfconf-query -c xfwm4 -p /general/theme -s Windows-10-Dark
xfconf-query -c xfwm4 -p /general/title_alignment -s left
xfconf-query -c xfwm4 -p /general/title_font -s "WeblySleek UI Semi-Bold 12"
xfconf-query -c xfwm4 -p /general/button_layout -s "O|HMC"
xfconf-query -c xsettings -p /Gtk/CursorThemeName -s Win10
xfconf-query -c xsettings -p /Gtk/FontName -s "WeblySleek UI Semi-Bold 12"
xfconf-query -c xsettings -p /Net/IconThemeName -s Windows-10
xfconf-query -c xsettings -p /Net/ThemeName -s Windows-10-Dark
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitor0/workspace0/last-image -s /usr/share/backgrounds/Twister10.png
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitor1/workspace0/last-image -s /usr/share/backgrounds/Twister10.png
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorHDMI/workspace0/last-image -s /usr/share/backgrounds/Twister10.png
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorHDMI1/workspace0/last-image -s /usr/share/backgrounds/Twister10.png
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorHDMI2/workspace0/last-image -s /usr/share/backgrounds/Twister10.png
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorHDMI-1/workspace0/last-image -s /usr/share/backgrounds/Twister10.png
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorHDMI-2/workspace0/last-image -s /usr/share/backgrounds/Twister10.png
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorVirtual1/workspace0/last-image -s /usr/share/backgrounds/Twister10.png
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitoreDP/workspace0/last-image -s /usr/share/backgrounds/Twister10.png
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitoreDP1/workspace0/last-image -s /usr/share/backgrounds/Twister10.png
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitoreDP2/workspace0/last-image -s /usr/share/backgrounds/Twister10.png
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitoreDP-1/workspace0/last-image -s /usr/share/backgrounds/Twister10.png
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitoreDP-2/workspace0/last-image -s /usr/share/backgrounds/Twister10.png
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorLVDS/workspace0/last-image -s /usr/share/backgrounds/Twister10.png
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorLVDS1/workspace0/last-image -s /usr/share/backgrounds/Twister10.png
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorLVDS2/workspace0/last-image -s /usr/share/backgrounds/Twister10.png
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorLVDS-1/workspace0/last-image -s /usr/share/backgrounds/Twister10.png
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorLVDS-2/workspace0/last-image -s /usr/share/backgrounds/Twister10.png
break;;


"Twister11")

echo "Restoring default Twister 11 theme..."

sudo rm -r /usr/share/ThemeSwitcher/Twister11/panel
sudo rm -r /usr/share/ThemeSwitcher/Twister11/xfconf
sudo cp -r /usr/share/ThemeSwitcher/Backup/Twister11/panel /usr/share/ThemeSwitcher/Twister11
sudo cp -r /usr/share/ThemeSwitcher/Backup/Twister11/xfconf /usr/share/ThemeSwitcher/Twister11
sudo find /usr/share/ThemeSwitcher/Twister11/panel -type d -exec chmod 755 {} \;
sudo find /usr/share/ThemeSwitcher/Twister11/panel -type f -exec chmod 644 {} \;
sudo find /usr/share/ThemeSwitcher/Twister11/xfconf -type d -exec chmod 755 {} \;
sudo find /usr/share/ThemeSwitcher/Twister11/xfconf -type f -exec chmod 644 {} \;
sudo chown -R root:root /usr/share/ThemeSwitcher/Twister11/panel
sudo chown -R root:root /usr/share/ThemeSwitcher/Twister11/xfconf
pkill xfce4-panel
sudo rm -r ~/.config/xfce4/panel
sudo rm -r ~/.config/xfce4/xfconf
sudo cp -r /usr/share/ThemeSwitcher/Twister11/panel ~/.config/xfce4
sudo cp -r /usr/share/ThemeSwitcher/Twister11/xfconf ~/.config/xfce4
sudo find ~/.config/xfce4/panel -type d -exec chmod 755 {} \;
sudo find ~/.config/xfce4/panel -type f -exec chmod 644 {} \;
sudo find ~/.config/xfce4/xfconf -type d -exec chmod 755 {} \;
sudo find ~/.config/xfce4/xfconf -type f -exec chmod 644 {} \;
sudo chown -R $USER:$USER ~/.config/xfce4/panel
sudo chown -R $USER:$USER ~/.config/xfce4/xfconf
xfconf-query -c xfwm4 -p /general/theme -s Windows-11
xfconf-query -c xfwm4 -p /general/title_alignment -s left
xfconf-query -c xfwm4 -p /general/title_font -s "WeblySleek UI Semi-Bold 12"
xfconf-query -c xfwm4 -p /general/button_layout -s "O|HMC"
xfconf-query -c xsettings -p /Gtk/CursorThemeName -s Win10
xfconf-query -c xsettings -p /Gtk/FontName -s "WeblySleek UI Semi-Bold 12"
xfconf-query -c xsettings -p /Net/IconThemeName -s Windows-11
xfconf-query -c xsettings -p /Net/ThemeName -s Windows-11
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitor0/workspace0/last-image -s /usr/share/backgrounds/Twister11.png
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitor1/workspace0/last-image -s /usr/share/backgrounds/Twister11.png
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorHDMI/workspace0/last-image -s /usr/share/backgrounds/Twister11.png
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorHDMI1/workspace0/last-image -s /usr/share/backgrounds/Twister11.png
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorHDMI2/workspace0/last-image -s /usr/share/backgrounds/Twister11.png
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorHDMI-1/workspace0/last-image -s /usr/share/backgrounds/Twister11.png
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorHDMI-2/workspace0/last-image -s /usr/share/backgrounds/Twister11.png
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorVirtual1/workspace0/last-image -s /usr/share/backgrounds/Twister11.png
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitoreDP/workspace0/last-image -s /usr/share/backgrounds/Twister11.png
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitoreDP1/workspace0/last-image -s /usr/share/backgrounds/Twister11.png
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitoreDP2/workspace0/last-image -s /usr/share/backgrounds/Twister11.png
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitoreDP-1/workspace0/last-image -s /usr/share/backgrounds/Twister11.png
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitoreDP-2/workspace0/last-image -s /usr/share/backgrounds/Twister11.png
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorLVDS/workspace0/last-image -s /usr/share/backgrounds/Twister11.png
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorLVDS1/workspace0/last-image -s /usr/share/backgrounds/Twister11.png
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorLVDS2/workspace0/last-image -s /usr/share/backgrounds/Twister11.png
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorLVDS-1/workspace0/last-image -s /usr/share/backgrounds/Twister11.png
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorLVDS-2/workspace0/last-image -s /usr/share/backgrounds/Twister11.png
break;;


"Twister11-Dark")

echo "Restoring default Twister 11 Dark theme..."

sudo rm -r /usr/share/ThemeSwitcher/Twister11-Dark/panel
sudo rm -r /usr/share/ThemeSwitcher/Twister11-Dark/xfconf
sudo cp -r /usr/share/ThemeSwitcher/Backup/Twister11-Dark/panel /usr/share/ThemeSwitcher/Twister11-Dark
sudo cp -r /usr/share/ThemeSwitcher/Backup/Twister11-Dark/xfconf /usr/share/ThemeSwitcher/Twister11-Dark
sudo find /usr/share/ThemeSwitcher/Twister11-Dark/panel -type d -exec chmod 755 {} \;
sudo find /usr/share/ThemeSwitcher/Twister11-Dark/panel -type f -exec chmod 644 {} \;
sudo find /usr/share/ThemeSwitcher/Twister11-Dark/xfconf -type d -exec chmod 755 {} \;
sudo find /usr/share/ThemeSwitcher/Twister11-Dark/xfconf -type f -exec chmod 644 {} \;
sudo chown -R root:root /usr/share/ThemeSwitcher/Twister11-Dark/panel
sudo chown -R root:root /usr/share/ThemeSwitcher/Twister11-Dark/xfconf
pkill xfce4-panel
sudo rm -r ~/.config/xfce4/panel
sudo rm -r ~/.config/xfce4/xfconf
sudo cp -r /usr/share/ThemeSwitcher/Twister11-Dark/panel ~/.config/xfce4
sudo cp -r /usr/share/ThemeSwitcher/Twister11-Dark/xfconf ~/.config/xfce4
sudo find ~/.config/xfce4/panel -type d -exec chmod 755 {} \;
sudo find ~/.config/xfce4/panel -type f -exec chmod 644 {} \;
sudo find ~/.config/xfce4/xfconf -type d -exec chmod 755 {} \;
sudo find ~/.config/xfce4/xfconf -type f -exec chmod 644 {} \;
sudo chown -R $USER:$USER ~/.config/xfce4/panel
sudo chown -R $USER:$USER ~/.config/xfce4/xfconf
xfconf-query -c xfwm4 -p /general/theme -s Windows-11-Dark
xfconf-query -c xfwm4 -p /general/title_alignment -s left
xfconf-query -c xfwm4 -p /general/title_font -s "WeblySleek UI Semi-Bold 12"
xfconf-query -c xfwm4 -p /general/button_layout -s "O|HMC"
xfconf-query -c xsettings -p /Gtk/CursorThemeName -s Win10
xfconf-query -c xsettings -p /Gtk/FontName -s "WeblySleek UI Semi-Bold 12"
xfconf-query -c xsettings -p /Net/IconThemeName -s Windows-11-Dark
xfconf-query -c xsettings -p /Net/ThemeName -s Windows-11-Dark
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitor0/workspace0/last-image -s /usr/share/backgrounds/Twister11-Dark.png
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitor1/workspace0/last-image -s /usr/share/backgrounds/Twister11-Dark.png
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorHDMI/workspace0/last-image -s /usr/share/backgrounds/Twister11-Dark.png
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorHDMI1/workspace0/last-image -s /usr/share/backgrounds/Twister11-Dark.png
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorHDMI2/workspace0/last-image -s /usr/share/backgrounds/Twister11-Dark.png
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorHDMI-1/workspace0/last-image -s /usr/share/backgrounds/Twister11-Dark.png
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorHDMI-2/workspace0/last-image -s /usr/share/backgrounds/Twister11-Dark.png
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorVirtual1/workspace0/last-image -s /usr/share/backgrounds/Twister11-Dark.png
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitoreDP/workspace0/last-image -s /usr/share/backgrounds/Twister11-Dark.png
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitoreDP1/workspace0/last-image -s /usr/share/backgrounds/Twister11-Dark.png
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitoreDP2/workspace0/last-image -s /usr/share/backgrounds/Twister11-Dark.png
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitoreDP-1/workspace0/last-image -s /usr/share/backgrounds/Twister11-Dark.png
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitoreDP-2/workspace0/last-image -s /usr/share/backgrounds/Twister11-Dark.png
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorLVDS/workspace0/last-image -s /usr/share/backgrounds/Twister11-Dark.png
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorLVDS1/workspace0/last-image -s /usr/share/backgrounds/Twister11-Dark.png
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorLVDS2/workspace0/last-image -s /usr/share/backgrounds/Twister11-Dark.png
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorLVDS-1/workspace0/last-image -s /usr/share/backgrounds/Twister11-Dark.png
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorLVDS-2/workspace0/last-image -s /usr/share/backgrounds/Twister11-Dark.png
break;;


"iRaspbian")

echo "Restoring default iTwister theme..."

sudo rm -r /usr/share/ThemeSwitcher/iRaspbian/panel
sudo rm -r /usr/share/ThemeSwitcher/iRaspbian/xfconf
sudo cp -r /usr/share/ThemeSwitcher/Backup/iRaspbian/panel /usr/share/ThemeSwitcher/iRaspbian
sudo cp -r /usr/share/ThemeSwitcher/Backup/iRaspbian/xfconf /usr/share/ThemeSwitcher/iRaspbian
sudo find /usr/share/ThemeSwitcher/iRaspbian/panel -type d -exec chmod 755 {} \;
sudo find /usr/share/ThemeSwitcher/iRaspbian/panel -type f -exec chmod 644 {} \;
sudo find /usr/share/ThemeSwitcher/iRaspbian/xfconf -type d -exec chmod 755 {} \;
sudo find /usr/share/ThemeSwitcher/iRaspbian/xfconf -type f -exec chmod 644 {} \;
sudo chown -R root:root /usr/share/ThemeSwitcher/iRaspbian/panel
sudo chown -R root:root /usr/share/ThemeSwitcher/iRaspbian/xfconf
pkill plank
pkill xfce4-panel
sudo rm -r ~/.config/xfce4/panel
sudo rm -r ~/.config/xfce4/xfconf
sudo cp -r /usr/share/ThemeSwitcher/iRaspbian/panel ~/.config/xfce4
sudo cp -r /usr/share/ThemeSwitcher/iRaspbian/xfconf ~/.config/xfce4
sudo find ~/.config/xfce4/panel -type d -exec chmod 755 {} \;
sudo find ~/.config/xfce4/panel -type f -exec chmod 644 {} \;
sudo find ~/.config/xfce4/xfconf -type d -exec chmod 755 {} \;
sudo find ~/.config/xfce4/xfconf -type f -exec chmod 644 {} \;
sudo chown -R $USER:$USER ~/.config/xfce4/panel
sudo chown -R $USER:$USER ~/.config/xfce4/xfconf
xfconf-query -c xfwm4 -p /general/theme -s Catalina
xfconf-query -c xfwm4 -p /general/title_alignment -s center
xfconf-query -c xfwm4 -p /general/title_font -s "SF Pro Display 11"
xfconf-query -c xfwm4 -p /general/button_layout -s "CHM|"
xfconf-query -c xsettings -p /Gtk/CursorThemeName -s macOS
xfconf-query -c xsettings -p /Gtk/FontName -s "SF Pro Display 11"
xfconf-query -c xsettings -p /Net/IconThemeName -s Catalina
xfconf-query -c xsettings -p /Net/ThemeName -s Catalina
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitor0/workspace0/last-image -s /usr/share/backgrounds/CatalinaRecreation.jpg
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitor1/workspace0/last-image -s /usr/share/backgrounds/CatalinaRecreation.jpg
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorHDMI/workspace0/last-image -s /usr/share/backgrounds/CatalinaRecreation.jpg
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorHDMI1/workspace0/last-image -s /usr/share/backgrounds/CatalinaRecreation.jpg
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorHDMI2/workspace0/last-image -s /usr/share/backgrounds/CatalinaRecreation.jpg
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorHDMI-1/workspace0/last-image -s /usr/share/backgrounds/CatalinaRecreation.jpg
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorHDMI-2/workspace0/last-image -s /usr/share/backgrounds/CatalinaRecreation.jpg
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorVirtual1/workspace0/last-image -s /usr/share/backgrounds/CatalinaRecreation.jpg
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitoreDP/workspace0/last-image -s /usr/share/backgrounds/CatalinaRecreation.jpg
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitoreDP1/workspace0/last-image -s /usr/share/backgrounds/CatalinaRecreation.jpg
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitoreDP2/workspace0/last-image -s /usr/share/backgrounds/CatalinaRecreation.jpg
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitoreDP-1/workspace0/last-image -s /usr/share/backgrounds/CatalinaRecreation.jpg
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitoreDP-2/workspace0/last-image -s /usr/share/backgrounds/CatalinaRecreation.jpg
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorLVDS/workspace0/last-image -s /usr/share/backgrounds/CatalinaRecreation.jpg
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorLVDS1/workspace0/last-image -s /usr/share/backgrounds/CatalinaRecreation.jpg
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorLVDS2/workspace0/last-image -s /usr/share/backgrounds/CatalinaRecreation.jpg
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorLVDS-1/workspace0/last-image -s /usr/share/backgrounds/CatalinaRecreation.jpg
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorLVDS-2/workspace0/last-image -s /usr/share/backgrounds/CatalinaRecreation.jpg
gsettings set net.launchpad.plank.dock.settings:/net/launchpad/plank/docks/dock1/ theme Catalina
break;;


"iRaspbian-Dark")

echo "Restoring default iTwister Dark theme..."

sudo rm -r /usr/share/ThemeSwitcher/iRaspbian-Dark/panel
sudo rm -r /usr/share/ThemeSwitcher/iRaspbian-Dark/xfconf
sudo cp -r /usr/share/ThemeSwitcher/Backup/iRaspbian-Dark/panel /usr/share/ThemeSwitcher/iRaspbian-Dark
sudo cp -r /usr/share/ThemeSwitcher/Backup/iRaspbian-Dark/xfconf /usr/share/ThemeSwitcher/iRaspbian-Dark
sudo find /usr/share/ThemeSwitcher/iRaspbian-Dark/panel -type d -exec chmod 755 {} \;
sudo find /usr/share/ThemeSwitcher/iRaspbian-Dark/panel -type f -exec chmod 644 {} \;
sudo find /usr/share/ThemeSwitcher/iRaspbian-Dark/xfconf -type d -exec chmod 755 {} \;
sudo find /usr/share/ThemeSwitcher/iRaspbian-Dark/xfconf -type f -exec chmod 644 {} \;
sudo chown -R root:root /usr/share/ThemeSwitcher/iRaspbian-Dark/panel
sudo chown -R root:root /usr/share/ThemeSwitcher/iRaspbian-Dark/xfconf
pkill plank
pkill xfce4-panel
sudo rm -r ~/.config/xfce4/panel
sudo rm -r ~/.config/xfce4/xfconf
sudo cp -r /usr/share/ThemeSwitcher/iRaspbian-Dark/panel ~/.config/xfce4
sudo cp -r /usr/share/ThemeSwitcher/iRaspbian-Dark/xfconf ~/.config/xfce4
sudo find ~/.config/xfce4/panel -type d -exec chmod 755 {} \;
sudo find ~/.config/xfce4/panel -type f -exec chmod 644 {} \;
sudo find ~/.config/xfce4/xfconf -type d -exec chmod 755 {} \;
sudo find ~/.config/xfce4/xfconf -type f -exec chmod 644 {} \;
sudo chown -R $USER:$USER ~/.config/xfce4/panel
sudo chown -R $USER:$USER ~/.config/xfce4/xfconf
xfconf-query -c xfwm4 -p /general/theme -s Catalina-Dark
xfconf-query -c xfwm4 -p /general/title_alignment -s center
xfconf-query -c xfwm4 -p /general/title_font -s "SF Pro Display 11"
xfconf-query -c xfwm4 -p /general/button_layout -s "CHM|"
xfconf-query -c xsettings -p /Gtk/CursorThemeName -s macOS
xfconf-query -c xsettings -p /Gtk/FontName -s "SF Pro Display 11"
xfconf-query -c xsettings -p /Net/IconThemeName -s Catalina-Dark
xfconf-query -c xsettings -p /Net/ThemeName -s Catalina-Dark
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitor0/workspace0/last-image -s /usr/share/backgrounds/CatalinaRecreation.jpg
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitor1/workspace0/last-image -s /usr/share/backgrounds/CatalinaRecreation.jpg
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorHDMI/workspace0/last-image -s /usr/share/backgrounds/CatalinaRecreation.jpg
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorHDMI1/workspace0/last-image -s /usr/share/backgrounds/CatalinaRecreation.jpg
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorHDMI2/workspace0/last-image -s /usr/share/backgrounds/CatalinaRecreation.jpg
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorHDMI-1/workspace0/last-image -s /usr/share/backgrounds/CatalinaRecreation.jpg
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorHDMI-2/workspace0/last-image -s /usr/share/backgrounds/CatalinaRecreation.jpg
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorVirtual1/workspace0/last-image -s /usr/share/backgrounds/CatalinaRecreation.jpg
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitoreDP/workspace0/last-image -s /usr/share/backgrounds/CatalinaRecreation.jpg
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitoreDP1/workspace0/last-image -s /usr/share/backgrounds/CatalinaRecreation.jpg
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitoreDP2/workspace0/last-image -s /usr/share/backgrounds/CatalinaRecreation.jpg
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitoreDP-1/workspace0/last-image -s /usr/share/backgrounds/CatalinaRecreation.jpg
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitoreDP-2/workspace0/last-image -s /usr/share/backgrounds/CatalinaRecreation.jpg
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorLVDS/workspace0/last-image -s /usr/share/backgrounds/CatalinaRecreation.jpg
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorLVDS1/workspace0/last-image -s /usr/share/backgrounds/CatalinaRecreation.jpg
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorLVDS2/workspace0/last-image -s /usr/share/backgrounds/CatalinaRecreation.jpg
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorLVDS-1/workspace0/last-image -s /usr/share/backgrounds/CatalinaRecreation.jpg
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorLVDS-2/workspace0/last-image -s /usr/share/backgrounds/CatalinaRecreation.jpg
gsettings set net.launchpad.plank.dock.settings:/net/launchpad/plank/docks/dock1/ theme Catalina-Dark
break;;


"iRaspbianSur")

echo "Restoring default iTwister Sur theme..."

sudo rm -r /usr/share/ThemeSwitcher/iRaspbianSur/panel
sudo rm -r /usr/share/ThemeSwitcher/iRaspbianSur/xfconf
sudo cp -r /usr/share/ThemeSwitcher/Backup/iRaspbianSur/panel /usr/share/ThemeSwitcher/iRaspbianSur
sudo cp -r /usr/share/ThemeSwitcher/Backup/iRaspbianSur/xfconf /usr/share/ThemeSwitcher/iRaspbianSur
sudo find /usr/share/ThemeSwitcher/iRaspbianSur/panel -type d -exec chmod 755 {} \;
sudo find /usr/share/ThemeSwitcher/iRaspbianSur/panel -type f -exec chmod 644 {} \;
sudo find /usr/share/ThemeSwitcher/iRaspbianSur/xfconf -type d -exec chmod 755 {} \;
sudo find /usr/share/ThemeSwitcher/iRaspbianSur/xfconf -type f -exec chmod 644 {} \;
sudo chown -R root:root /usr/share/ThemeSwitcher/iRaspbianSur/panel
sudo chown -R root:root /usr/share/ThemeSwitcher/iRaspbianSur/xfconf
pkill plank
pkill xfce4-panel
sudo rm -r ~/.config/xfce4/panel
sudo rm -r ~/.config/xfce4/xfconf
sudo cp -r /usr/share/ThemeSwitcher/iRaspbianSur/panel ~/.config/xfce4
sudo cp -r /usr/share/ThemeSwitcher/iRaspbianSur/xfconf ~/.config/xfce4
sudo find ~/.config/xfce4/panel -type d -exec chmod 755 {} \;
sudo find ~/.config/xfce4/panel -type f -exec chmod 644 {} \;
sudo find ~/.config/xfce4/xfconf -type d -exec chmod 755 {} \;
sudo find ~/.config/xfce4/xfconf -type f -exec chmod 644 {} \;
sudo chown -R $USER:$USER ~/.config/xfce4/panel
sudo chown -R $USER:$USER ~/.config/xfce4/xfconf
xfconf-query -c xfwm4 -p /general/theme -s BigSur
xfconf-query -c xfwm4 -p /general/title_alignment -s center
xfconf-query -c xfwm4 -p /general/title_font -s "SF Pro Display 11"
xfconf-query -c xfwm4 -p /general/button_layout -s "CHM|"
xfconf-query -c xsettings -p /Gtk/CursorThemeName -s macOS
xfconf-query -c xsettings -p /Gtk/FontName -s "SF Pro Display 11"
xfconf-query -c xsettings -p /Net/IconThemeName -s BigSur
xfconf-query -c xsettings -p /Net/ThemeName -s BigSur
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitor0/workspace0/last-image -s /usr/share/backgrounds/BigSurRecreation.jpg
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitor1/workspace0/last-image -s /usr/share/backgrounds/BigSurRecreation.jpg
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorHDMI/workspace0/last-image -s /usr/share/backgrounds/BigSurRecreation.jpg
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorHDMI1/workspace0/last-image -s /usr/share/backgrounds/BigSurRecreation.jpg
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorHDMI2/workspace0/last-image -s /usr/share/backgrounds/BigSurRecreation.jpg
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorHDMI-1/workspace0/last-image -s /usr/share/backgrounds/BigSurRecreation.jpg
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorHDMI-2/workspace0/last-image -s /usr/share/backgrounds/BigSurRecreation.jpg
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorVirtual1/workspace0/last-image -s /usr/share/backgrounds/BigSurRecreation.jpg
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitoreDP/workspace0/last-image -s /usr/share/backgrounds/BigSurRecreation.jpg
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitoreDP1/workspace0/last-image -s /usr/share/backgrounds/BigSurRecreation.jpg
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitoreDP2/workspace0/last-image -s /usr/share/backgrounds/BigSurRecreation.jpg
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitoreDP-1/workspace0/last-image -s /usr/share/backgrounds/BigSurRecreation.jpg
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitoreDP-2/workspace0/last-image -s /usr/share/backgrounds/BigSurRecreation.jpg
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorLVDS/workspace0/last-image -s /usr/share/backgrounds/BigSurRecreation.jpg
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorLVDS1/workspace0/last-image -s /usr/share/backgrounds/BigSurRecreation.jpg
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorLVDS2/workspace0/last-image -s /usr/share/backgrounds/BigSurRecreation.jpg
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorLVDS-1/workspace0/last-image -s /usr/share/backgrounds/BigSurRecreation.jpg
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorLVDS-2/workspace0/last-image -s /usr/share/backgrounds/BigSurRecreation.jpg
gsettings set net.launchpad.plank.dock.settings:/net/launchpad/plank/docks/dock1/ theme BigSur
break;;


"iRaspbianSur-Dark")

echo "Restoring default iTwister Sur Dark theme..."

sudo rm -r /usr/share/ThemeSwitcher/iRaspbianSur-Dark/panel
sudo rm -r /usr/share/ThemeSwitcher/iRaspbianSur-Dark/xfconf
sudo cp -r /usr/share/ThemeSwitcher/Backup/iRaspbianSur-Dark/panel /usr/share/ThemeSwitcher/iRaspbianSur-Dark
sudo cp -r /usr/share/ThemeSwitcher/Backup/iRaspbianSur-Dark/xfconf /usr/share/ThemeSwitcher/iRaspbianSur-Dark
sudo find /usr/share/ThemeSwitcher/iRaspbianSur-Dark/panel -type d -exec chmod 755 {} \;
sudo find /usr/share/ThemeSwitcher/iRaspbianSur-Dark/panel -type f -exec chmod 644 {} \;
sudo find /usr/share/ThemeSwitcher/iRaspbianSur-Dark/xfconf -type d -exec chmod 755 {} \;
sudo find /usr/share/ThemeSwitcher/iRaspbianSur-Dark/xfconf -type f -exec chmod 644 {} \;
sudo chown -R root:root /usr/share/ThemeSwitcher/iRaspbianSur-Dark/panel
sudo chown -R root:root /usr/share/ThemeSwitcher/iRaspbianSur-Dark/xfconf
pkill plank
pkill xfce4-panel
sudo rm -r ~/.config/xfce4/panel
sudo rm -r ~/.config/xfce4/xfconf
sudo cp -r /usr/share/ThemeSwitcher/iRaspbianSur-Dark/panel ~/.config/xfce4
sudo cp -r /usr/share/ThemeSwitcher/iRaspbianSur-Dark/xfconf ~/.config/xfce4
sudo find ~/.config/xfce4/panel -type d -exec chmod 755 {} \;
sudo find ~/.config/xfce4/panel -type f -exec chmod 644 {} \;
sudo find ~/.config/xfce4/xfconf -type d -exec chmod 755 {} \;
sudo find ~/.config/xfce4/xfconf -type f -exec chmod 644 {} \;
sudo chown -R $USER:$USER ~/.config/xfce4/panel
sudo chown -R $USER:$USER ~/.config/xfce4/xfconf
xfconf-query -c xfwm4 -p /general/theme -s BigSur-Dark
xfconf-query -c xfwm4 -p /general/title_alignment -s center
xfconf-query -c xfwm4 -p /general/title_font -s "SF Pro Display 11"
xfconf-query -c xfwm4 -p /general/button_layout -s "CHM|"
xfconf-query -c xsettings -p /Gtk/CursorThemeName -s macOS
xfconf-query -c xsettings -p /Gtk/FontName -s "SF Pro Display 11"
xfconf-query -c xsettings -p /Net/IconThemeName -s BigSur-Dark
xfconf-query -c xsettings -p /Net/ThemeName -s BigSur-Dark
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitor0/workspace0/last-image -s /usr/share/backgrounds/BigSurRecreation.jpg
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitor1/workspace0/last-image -s /usr/share/backgrounds/BigSurRecreation.jpg
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorHDMI/workspace0/last-image -s /usr/share/backgrounds/BigSurRecreation.jpg
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorHDMI1/workspace0/last-image -s /usr/share/backgrounds/BigSurRecreation.jpg
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorHDMI2/workspace0/last-image -s /usr/share/backgrounds/BigSurRecreation.jpg
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorHDMI-1/workspace0/last-image -s /usr/share/backgrounds/BigSurRecreation.jpg
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorHDMI-2/workspace0/last-image -s /usr/share/backgrounds/BigSurRecreation.jpg
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorVirtual1/workspace0/last-image -s /usr/share/backgrounds/BigSurRecreation.jpg
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitoreDP/workspace0/last-image -s /usr/share/backgrounds/BigSurRecreation.jpg
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitoreDP1/workspace0/last-image -s /usr/share/backgrounds/BigSurRecreation.jpg
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitoreDP2/workspace0/last-image -s /usr/share/backgrounds/BigSurRecreation.jpg
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitoreDP-1/workspace0/last-image -s /usr/share/backgrounds/BigSurRecreation.jpg
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitoreDP-2/workspace0/last-image -s /usr/share/backgrounds/BigSurRecreation.jpg
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorLVDS/workspace0/last-image -s /usr/share/backgrounds/BigSurRecreation.jpg
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorLVDS1/workspace0/last-image -s /usr/share/backgrounds/BigSurRecreation.jpg
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorLVDS2/workspace0/last-image -s /usr/share/backgrounds/BigSurRecreation.jpg
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorLVDS-1/workspace0/last-image -s /usr/share/backgrounds/BigSurRecreation.jpg
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorLVDS-2/workspace0/last-image -s /usr/share/backgrounds/BigSurRecreation.jpg
gsettings set net.launchpad.plank.dock.settings:/net/launchpad/plank/docks/dock1/ theme BigSur-Dark
break;;


*) echo "invalid option $REPLY";;
esac
done


clear
read -p "Restore complete. Your computer will now restart. Press [Enter] when ready to do so."
sudo reboot
