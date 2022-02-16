#!/bin/bash
read -p "This will uninstall Twister UI. Press [Ctrl-C] to cancel, or [Enter] to continue..."
clear
echo "uninstalling... This may take awhile. Please be patient."

pkill plank
pkill xfce4-panel

sudo rm -r -f /usr/share/fonts/opentype/SF-Compact
sudo rm -r -f /usr/share/fonts/opentype/SF-Pro
sudo rm -r -f /usr/share/fonts/opentype/W95FA
sudo rm -r -f /usr/share/fonts/truetype/WeblySleekUI

sudo rm -r -f /usr/share/icons/BigSur
sudo rm -r -f /usr/share/icons/BigSur-Dark
sudo rm -r -f /usr/share/icons/Catalina
sudo rm -r -f /usr/share/icons/Catalina-Dark
sudo rm -r -f /usr/share/icons/macOS
sudo rm -r -f /usr/share/icons/TwisterOS
sudo rm -r -f /usr/share/icons/Win10
sudo rm -r -f /usr/share/icons/Win95
sudo rm -r -f /usr/share/icons/Windows-7
sudo rm -r -f /usr/share/icons/Windows-10
sudo rm -r -f /usr/share/icons/Windows-11
sudo rm -r -f /usr/share/icons/Windows-11-Dark
sudo rm -r -f /usr/share/icons/Windows-95
sudo rm -r -f /usr/share/icons/Windows-XP

sudo rm -f /usr/share/icons/android2.png
sudo rm -f /usr/share/icons/discord.svg
sudo rm -f /usr/share/icons/dynamicwallpaper.png
sudo rm -f /usr/share/icons/neofetch.png
sudo rm -f /usr/share/icons/photogimp.png
sudo rm -f /usr/share/icons/slingscold.svg
sudo rm -f /usr/share/icons/themetwister.png
sudo rm -f /usr/share/icons/twisteros.svg
sudo rm -f /usr/share/icons/twistpatch.png
sudo rm -f /usr/share/icons/wine.svg
sudo rm -f /usr/share/icons/hicolor/scalable/status/notification-symbolic.svg
sudo mv -f /usr/share/icons/hicolor/scalable/status/notification-symbolic-old.svg /usr/share/icons/hicolor/scalable/status/notification-symbolic.svg

sudo rm -r -f /usr/share/plank/themes/BigSur
sudo rm -r -f /usr/share/plank/themes/BigSur-Dark
sudo rm -r -f /usr/share/plank/themes/Catalina
sudo rm -r -f /usr/share/plank/themes/Catalina-Dark

sudo rm -f /usr/share/backgrounds/BigSurRecreation.jpg
sudo rm -f /usr/share/backgrounds/CatalinaRecreation.jpg
sudo rm -f /usr/share/backgrounds/Clouds.png
sudo rm -f /usr/share/backgrounds/nighthawk-twister.png
sudo rm -f /usr/share/backgrounds/Raspbian7.png
sudo rm -f /usr/share/backgrounds/raspbian-x-nighthawk.png
sudo rm -f /usr/share/backgrounds/RaspbianXP.jpg
sudo rm -f /usr/share/backgrounds/Twister10.png
sudo rm -f /usr/share/backgrounds/Twister10-alt.png
sudo rm -f /usr/share/backgrounds/Twister11.png
sudo rm -f /usr/share/backgrounds/Twister11-Dark.png
sudo rm -f /usr/share/backgrounds/TwisterOS.png
sudo rm -f /usr/share/backgrounds/TwisterOS-01.png
sudo rm -f /usr/share/backgrounds/TwisterOS-02.png
sudo rm -f /usr/share/backgrounds/TwisterOS-03.png
sudo rm -f /usr/share/backgrounds/TwisterOS-04.png
sudo rm -f /usr/share/backgrounds/TwisterOS-05.png
sudo rm -f /usr/share/backgrounds/TwisterOS-06.png
sudo rm -f /usr/share/backgrounds/TwisterOS-07.png
sudo rm -f /usr/share/backgrounds/TwisterOS-08.png

sudo rm -r -f /usr/share/themes/BigSur
sudo rm -r -f /usr/share/themes/BigSur-Dark
sudo rm -r -f /usr/share/themes/Catalina
sudo rm -r -f /usr/share/themes/Catalina-Dark
sudo rm -r -f /usr/share/themes/TwisterOS
sudo rm -r -f /usr/share/themes/TwisterOS-Dark
sudo rm -r -f /usr/share/themes/Windows-7
sudo rm -r -f /usr/share/themes/Windows-10
sudo rm -r -f /usr/share/themes/Windows-10-Dark
sudo rm -r -f /usr/share/themes/Windows-11
sudo rm -r -f /usr/share/themes/Windows-11-Dark
sudo rm -r -f /usr/share/themes/Windows-95
sudo rm -r -f /usr/share/themes/Windows-XP
sudo rm -r -f ~/.themes/Windows-7-Sky

sudo rm -r -f /usr/share/ThemeSwitcher

if test -f "/usr/share/plymouth/themes/mint-logo/logo.png"; then
    sudo rm -f /usr/share/plymouth/themes/mint-logo/logo.png
    sudo rm -f /usr/share/plymouth/themes/mint-logo/spinner.png
    sudo mv -f /usr/share/plymouth/themes/mint-logo/logo-old.png /usr/share/plymouth/themes/mint-logo/logo.png
    sudo mv -f /usr/share/plymouth/themes/mint-logo/spinner-old.png /usr/share/plymouth/themes/mint-logo/spinner.png
fi

if test -f "/usr/share/plymouth/themes/xubuntu-logo/logo.png"; then
    sudo rm -f /usr/share/plymouth/themes/xubuntu-logo/logo.png
    sudo rm -f /usr/share/plymouth/themes/xubuntu-logo/logo_16bit.png
    sudo rm -f /usr/share/plymouth/themes/xubuntu-logo/spinner.png
    sudo mv -f /usr/share/plymouth/themes/xubuntu-logo/logo-old.png /usr/share/plymouth/themes/xubuntu-logo/logo.png
    sudo mv -f /usr/share/plymouth/themes/xubuntu-logo/logo_16bit-old.png /usr/share/plymouth/themes/xubuntu-logo/logo_16bit.png
    sudo mv -f /usr/share/plymouth/themes/xubuntu-logo/spinner-old.png /usr/share/plymouth/themes/xubuntu-logo/spinner.png
fi

sudo rm -r -f ~/Backgrounds

sudo rm -r -f ~/WebApps

sudo rm -r -f ~/.config/GIMP
sudo rm -r -f ~/.gimp-2.8

sudo rm -f ~/.local/share/applications/debian-uxterm.desktop
sudo rm -f ~/.local/share/applications/debian-xterm.desktop
sudo rm -f ~/.local/share/applications/gimp.desktop
sudo rm -f ~/.local/share/applications/globaltime.desktop
sudo rm -f ~/.local/share/applications/neofetch.desktop
sudo rm -f ~/.local/share/applications/org.gnome.Contacts.desktop
sudo rm -f ~/.local/share/applications/patcher.desktop
sudo rm -f ~/.local/share/applications/scrcpy.desktop
sudo rm -f ~/.local/share/applications/thunar-settings.desktop
sudo rm -f ~/.local/share/applications/wine-config.desktop
sudo rm -f ~/.local/share/applications/wine-desktop.desktop
sudo rm -f ~/.local/share/applications/xfcalendar.desktop
sudo rm -f ~/.local/share/applications/xfce4-terminal-settings.desktop
sudo rm -f ~/.local/share/applications/discord.desktop

sudo rm -f /usr/share/applications/notificationcenter.desktop
sudo rm -f /usr/share/applications/restore-twister-config.desktop
sudo rm -f /usr/share/applications/restore-twisterui-splash.desktop
sudo rm -f /usr/share/applications/spotlight.desktop
sudo rm -f /usr/share/applications/themetwister.desktop
sudo rm -f /usr/share/applications/dynamicwallpaper.desktop

sudo rm -r -f ~/.config/plank

sudo rm -f ~/.config/autostart/DynamicWallpaper.desktop
sudo rm -f ~/.config/autostart/logon.desktop
sudo rm -f ~/.config/autostart/twistup.desktop

sudo rm -r -f ~/.config/neofetch

sudo rm -r -f /usr/share/audacious/Skins/WinAmp

sudo rm -r -f /usr/local/share/notificationcenter
sudo rm -r -f /usr/local/share/spotlight
sudo rm -r -f /usr/local/share/themetwister

sudo rm -f /usr/local/bin/android.sh
sudo rm -f /usr/local/bin/nf-twister
sudo rm -f /usr/local/bin/notificationcenter
sudo rm -f /usr/local/bin/spotlight
sudo rm -f /usr/local/bin/themetwister
sudo rm -f /usr/local/bin/twistpatch
sudo rm -f /usr/local/bin/twistver
sudo rm -f /usr/local/bin/tuix86
sudo rm -f /usr/local/bin/steam.sh

sudo rm -r -f ~/patcher

sudo rm -f ~/Desktop/scrcpy.desktop
sudo rm -f ~/Desktop/steam.desktop
sudo rm -f ~/Desktop/net.lutris.Lutris.desktop
sudo rm -f ~/Desktop/themetwister.desktop
sudo rm -f ~/Desktop/discord.desktop
sudo rm -f ~/Desktop/webcord.desktop
sudo rm -f ~/Desktop/README.pdf

sudo rm -f ~/.gtkrc-2.0
sudo rm -f ~/.config/gtk-3.0/gtk.css
sudo rm -f /usr/share/sounds/logon.mp3
sudo rm -f ~/Desktop/harddisk.desktop
sudo rm -f ~/.config/autostart/Plank.desktop
sudo rm -f ~/.*.twid

sudo rm -r -f ~/.config/xfce4

clear
read -p "Uninstallation complete. Remaining 3rd-party applications can be removed through your software manager application. The system will now restart. When ready, press [Enter] to continue..."
sudo reboot

