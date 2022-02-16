#!/bin/bash
read -p "This will install Twister UI. Press [Ctrl-C] to cancel, or [Enter] to continue..."

read -p "Please ensure that you are connected to the internet before proceeding. When ready, press [Enter] to continue..."
sudo apt update
sudo apt install -y git mousepad file-roller xfce4-appmenu-plugin gimp plank mpg123 qjoypad jstest-gtk python3-tk python3-pil python3-pil.imagetk python3-pip mpv neofetch audacious meson libgtk-3-dev cairo-5c valac libgnome-menu-3-dev libgee-0.8-dev cdbs libblockdev-crypto2 evolution gnome-calendar gnome-contacts gparted gnome-maps hardinfo parole ristretto samba vlc xterm python3-setuptools python3-wheel flameshot fonts-noto-core fonts-noto-ui-core ttf-mscorefonts-installer yad xfce4-dev-tools libwnck-3-dev libxfce4ui-2-dev libxfce4panel-2.0-dev
sudo usermod -a -G "audio,video,input,dialout,plugdev,tty" $USER
sudo addgroup --system input




clear
echo "Installing... This may take awhile. Please be patient."

mkdir -p ~/.config/gtk-3.0
sudo find ~/.config/gtk-3.0 -type d -exec chmod 755 {} \;
sudo find ~/.config/gtk-3.0 -type f -exec chmod 644 {} \;
sudo chown -R $USER:$USER ~/.config/gtk-3.0

sudo mv -f ./install/fonts/SF-Compact /usr/share/fonts/opentype
sudo mv -f ./install/fonts/SF-Pro /usr/share/fonts/opentype
sudo mv -f ./install/fonts/W95FA /usr/share/fonts/opentype
sudo mv -f ./install/fonts/WeblySleekUI /usr/share/fonts/truetype

sudo find /usr/share/fonts/opentype/SF-Compact -type d -exec chmod 755 {} \;
sudo find /usr/share/fonts/opentype/SF-Compact -type f -exec chmod 644 {} \;
sudo find /usr/share/fonts/opentype/SF-Pro -type d -exec chmod 755 {} \;
sudo find /usr/share/fonts/opentype/SF-Pro -type f -exec chmod 644 {} \;
sudo find /usr/share/fonts/opentype/W95FA -type d -exec chmod 755 {} \;
sudo find /usr/share/fonts/opentype/W95FA -type f -exec chmod 644 {} \;
sudo find /usr/share/fonts/truetype/WeblySleekUI -type d -exec chmod 755 {} \;
sudo find /usr/share/fonts/truetype/WeblySleekUI -type f -exec chmod 644 {} \;

sudo chown -R root:root /usr/share/fonts/opentype/SF-Compact
sudo chown -R root:root /usr/share/fonts/opentype/SF-Pro
sudo chown -R root:root /usr/share/fonts/opentype/W95FA
sudo chown -R root:root /usr/share/fonts/truetype/WeblySleekUI

sudo mv -f ./install/icons/BigSur /usr/share/icons
sudo mv -f ./install/icons/BigSur-Dark /usr/share/icons
sudo mv -f ./install/icons/Catalina /usr/share/icons
sudo mv -f ./install/icons/Catalina-Dark /usr/share/icons
sudo mv -f ./install/icons/macOS /usr/share/icons
sudo mv -f ./install/icons/TwisterOS /usr/share/icons
sudo mv -f ./install/icons/Win10 /usr/share/icons
sudo mv -f ./install/icons/Win95 /usr/share/icons
sudo mv -f ./install/icons/Windows-7 /usr/share/icons
sudo mv -f ./install/icons/Windows-10 /usr/share/icons
sudo mv -f ./install/icons/Windows-11 /usr/share/icons
sudo mv -f ./install/icons/Windows-11-Dark /usr/share/icons
sudo mv -f ./install/icons/Windows-95 /usr/share/icons
sudo mv -f ./install/icons/Windows-XP /usr/share/icons

sudo mv -f ./install/icons/android2.png /usr/share/icons
sudo mv -f ./install/icons/discord.svg /usr/share/icons
sudo mv -f ./install/icons/dynamicwallpaper.png /usr/share/icons
sudo mv -f ./install/icons/neofetch.png /usr/share/icons
sudo mv -f ./install/icons/photogimp.png /usr/share/icons
sudo mv -f ./install/icons/slingscold.svg /usr/share/icons
sudo mv -f ./install/icons/themetwister.png /usr/share/icons
sudo mv -f ./install/icons/twisteros.svg /usr/share/icons
sudo mv -f ./install/icons/twistpatch.png /usr/share/icons
sudo mv -f ./install/icons/wine.svg /usr/share/icons
sudo mv -f /usr/share/icons/hicolor/scalable/status/notification-symbolic.svg /usr/share/icons/hicolor/scalable/status/notification-symbolic-old.svg
sudo mv -f ./install/icons/hicolor/notification-symbolic.svg /usr/share/icons/hicolor/scalable/status

sudo find /usr/share/icons/BigSur -type d -exec chmod 755 {} \;
sudo find /usr/share/icons/BigSur -type f -exec chmod 644 {} \;
sudo find /usr/share/icons/BigSur-Dark -type d -exec chmod 755 {} \;
sudo find /usr/share/icons/BigSur-Dark -type f -exec chmod 644 {} \;
sudo find /usr/share/icons/Catalina -type d -exec chmod 755 {} \;
sudo find /usr/share/icons/Catalina -type f -exec chmod 644 {} \;
sudo find /usr/share/icons/Catalina-Dark -type d -exec chmod 755 {} \;
sudo find /usr/share/icons/Catalina-Dark -type f -exec chmod 644 {} \;
sudo find /usr/share/icons/macOS -type d -exec chmod 755 {} \;
sudo find /usr/share/icons/macOS -type f -exec chmod 644 {} \;
sudo find /usr/share/icons/TwisterOS -type d -exec chmod 755 {} \;
sudo find /usr/share/icons/TwisterOS -type f -exec chmod 644 {} \;
sudo find /usr/share/icons/Win10 -type d -exec chmod 755 {} \;
sudo find /usr/share/icons/Win10 -type f -exec chmod 644 {} \;
sudo find /usr/share/icons/Win95 -type d -exec chmod 755 {} \;
sudo find /usr/share/icons/Win95 -type f -exec chmod 644 {} \;
sudo find /usr/share/icons/Windows-7 -type d -exec chmod 755 {} \;
sudo find /usr/share/icons/Windows-7 -type f -exec chmod 644 {} \;
sudo find /usr/share/icons/Windows-10 -type d -exec chmod 755 {} \;
sudo find /usr/share/icons/Windows-10 -type f -exec chmod 644 {} \;
sudo find /usr/share/icons/Windows-11 -type d -exec chmod 755 {} \;
sudo find /usr/share/icons/Windows-11 -type f -exec chmod 644 {} \;
sudo find /usr/share/icons/Windows-11-Dark -type d -exec chmod 755 {} \;
sudo find /usr/share/icons/Windows-11-Dark -type f -exec chmod 644 {} \;
sudo find /usr/share/icons/Windows-95 -type d -exec chmod 755 {} \;
sudo find /usr/share/icons/Windows-95 -type f -exec chmod 644 {} \;
sudo find /usr/share/icons/Windows-XP -type d -exec chmod 755 {} \;
sudo find /usr/share/icons/Windows-XP -type f -exec chmod 644 {} \;

sudo chmod 644 /usr/share/icons/android2.png
sudo chmod 644 /usr/share/icons/discord.svg
sudo chmod 644 /usr/share/icons/dynamicwallpaper.png
sudo chmod 644 /usr/share/icons/neofetch.png
sudo chmod 644 /usr/share/icons/photogimp.png
sudo chmod 644 /usr/share/icons/slingscold.svg
sudo chmod 644 /usr/share/icons/themetwister.png
sudo chmod 644 /usr/share/icons/twisteros.svg
sudo chmod 644 /usr/share/icons/twistpatch.png
sudo chmod 644 /usr/share/icons/wine.svg
sudo chmod 644 /usr/share/icons/hicolor/scalable/status/notification-symbolic.svg

sudo chown -R root:root /usr/share/icons/BigSur
sudo chown -R root:root /usr/share/icons/BigSur-Dark
sudo chown -R root:root /usr/share/icons/Catalina
sudo chown -R root:root /usr/share/icons/Catalina-Dark
sudo chown -R root:root /usr/share/icons/macOS
sudo chown -R root:root /usr/share/icons/TwisterOS
sudo chown -R root:root /usr/share/icons/Win10
sudo chown -R root:root /usr/share/icons/Win95
sudo chown -R root:root /usr/share/icons/Windows-7
sudo chown -R root:root /usr/share/icons/Windows-10
sudo chown -R root:root /usr/share/icons/Windows-11
sudo chown -R root:root /usr/share/icons/Windows-11-Dark
sudo chown -R root:root /usr/share/icons/Windows-95
sudo chown -R root:root /usr/share/icons/Windows-XP

sudo chown root:root /usr/share/icons/android2.png
sudo chown root:root /usr/share/icons/discord.svg
sudo chown root:root /usr/share/icons/dynamicwallpaper.png
sudo chown root:root /usr/share/icons/neofetch.png
sudo chown root:root /usr/share/icons/photogimp.png
sudo chown root:root /usr/share/icons/slingscold.svg
sudo chown root:root /usr/share/icons/themetwister.png
sudo chown root:root /usr/share/icons/twisteros.svg
sudo chown root:root /usr/share/icons/twistpatch.png
sudo chown root:root /usr/share/icons/wine.svg
sudo chown root:root /usr/share/icons/hicolor/scalable/status/notification-symbolic.svg

sudo mv -f ./install/plank/BigSur /usr/share/plank/themes
sudo mv -f ./install/plank/BigSur-Dark /usr/share/plank/themes
sudo mv -f ./install/plank/Catalina /usr/share/plank/themes
sudo mv -f ./install/plank/Catalina-Dark /usr/share/plank/themes

sudo find /usr/share/plank/themes/BigSur -type d -exec chmod 755 {} \;
sudo find /usr/share/plank/themes/BigSur -type f -exec chmod 644 {} \;
sudo find /usr/share/plank/themes/BigSur-Dark -type d -exec chmod 755 {} \;
sudo find /usr/share/plank/themes/BigSur-Dark -type f -exec chmod 644 {} \;
sudo find /usr/share/plank/themes/Catalina -type d -exec chmod 755 {} \;
sudo find /usr/share/plank/themes/Catalina -type f -exec chmod 644 {} \;
sudo find /usr/share/plank/themes/Catalina-Dark -type d -exec chmod 755 {} \;
sudo find /usr/share/plank/themes/Catalina-Dark -type f -exec chmod 644 {} \;

sudo chown -R root:root /usr/share/plank/themes/BigSur
sudo chown -R root:root /usr/share/plank/themes/BigSur-Dark
sudo chown -R root:root /usr/share/plank/themes/Catalina
sudo chown -R root:root /usr/share/plank/themes/Catalina-Dark

sudo mv -f ./install/usr-backgrounds/* /usr/share/backgrounds

sudo find /usr/share/backgrounds -type d -exec chmod 755 {} \;
sudo find /usr/share/backgrounds -type f -exec chmod 644 {} \;

sudo chown -R root:root /usr/share/backgrounds

sudo mv -f ./install/themes/BigSur /usr/share/themes
sudo mv -f ./install/themes/BigSur-Dark /usr/share/themes
sudo mv -f ./install/themes/Catalina /usr/share/themes
sudo mv -f ./install/themes/Catalina-Dark /usr/share/themes
sudo mv -f ./install/themes/TwisterOS /usr/share/themes
sudo mv -f ./install/themes/TwisterOS-Dark /usr/share/themes
sudo mv -f ./install/themes/Windows-7 /usr/share/themes
sudo mv -f ./install/themes/Windows-10 /usr/share/themes
sudo mv -f ./install/themes/Windows-10-Dark /usr/share/themes
sudo mv -f ./install/themes/Windows-11 /usr/share/themes
sudo mv -f ./install/themes/Windows-11-Dark /usr/share/themes
sudo mv -f ./install/themes/Windows-95 /usr/share/themes
sudo mv -f ./install/themes/Windows-XP /usr/share/themes
mkdir -p ~/.themes
sudo mv -f ./install/themes/Windows-7-Sky ~/.themes

sudo find /usr/share/themes/BigSur -type d -exec chmod 755 {} \;
sudo find /usr/share/themes/BigSur -type f -exec chmod 644 {} \;
sudo find /usr/share/themes/BigSur-Dark -type d -exec chmod 755 {} \;
sudo find /usr/share/themes/BigSur-Dark -type f -exec chmod 644 {} \;
sudo find /usr/share/themes/Catalina -type d -exec chmod 755 {} \;
sudo find /usr/share/themes/Catalina -type f -exec chmod 644 {} \;
sudo find /usr/share/themes/Catalina-Dark -type d -exec chmod 755 {} \;
sudo find /usr/share/themes/Catalina-Dark -type f -exec chmod 644 {} \;
sudo find /usr/share/themes/TwisterOS -type d -exec chmod 755 {} \;
sudo find /usr/share/themes/TwisterOS -type f -exec chmod 644 {} \;
sudo find /usr/share/themes/TwisterOS-Dark -type d -exec chmod 755 {} \;
sudo find /usr/share/themes/TwisterOS-Dark -type f -exec chmod 644 {} \;
sudo find /usr/share/themes/Windows-7 -type d -exec chmod 755 {} \;
sudo find /usr/share/themes/Windows-7 -type f -exec chmod 644 {} \;
sudo find /usr/share/themes/Windows-10 -type d -exec chmod 755 {} \;
sudo find /usr/share/themes/Windows-10 -type f -exec chmod 644 {} \;
sudo find /usr/share/themes/Windows-10-Dark -type d -exec chmod 755 {} \;
sudo find /usr/share/themes/Windows-10-Dark -type f -exec chmod 644 {} \;
sudo find /usr/share/themes/Windows-11 -type d -exec chmod 755 {} \;
sudo find /usr/share/themes/Windows-11 -type f -exec chmod 644 {} \;
sudo find /usr/share/themes/Windows-11-Dark -type d -exec chmod 755 {} \;
sudo find /usr/share/themes/Windows-11-Dark -type f -exec chmod 644 {} \;
sudo find /usr/share/themes/Windows-95 -type d -exec chmod 755 {} \;
sudo find /usr/share/themes/Windows-95 -type f -exec chmod 644 {} \;
sudo find /usr/share/themes/Windows-XP -type d -exec chmod 755 {} \;
sudo find /usr/share/themes/Windows-XP -type f -exec chmod 644 {} \;
sudo find ~/.themes/Windows-7-Sky -type d -exec chmod 755 {} \;
sudo find ~/.themes/Windows-7-Sky -type f -exec chmod 644 {} \;

sudo chown -R root:root /usr/share/themes/BigSur
sudo chown -R root:root /usr/share/themes/BigSur-Dark
sudo chown -R root:root /usr/share/themes/Catalina
sudo chown -R root:root /usr/share/themes/Catalina-Dark
sudo chown -R root:root /usr/share/themes/TwisterOS
sudo chown -R root:root /usr/share/themes/TwisterOS-Dark
sudo chown -R root:root /usr/share/themes/Windows-7
sudo chown -R root:root /usr/share/themes/Windows-10
sudo chown -R root:root /usr/share/themes/Windows-10-Dark
sudo chown -R root:root /usr/share/themes/Windows-11
sudo chown -R root:root /usr/share/themes/Windows-11-Dark
sudo chown -R root:root /usr/share/themes/Windows-95
sudo chown -R root:root /usr/share/themes/Windows-XP
sudo chown -R $USER:$USER ~/.themes/Windows-7-Sky

sudo mv -f ./install/ThemeSwitcher /usr/share

sudo find /usr/share/ThemeSwitcher -type d -exec chmod 755 {} \;
sudo find /usr/share/ThemeSwitcher -type f -exec chmod 644 {} \;

sudo chmod 755 /usr/share/ThemeSwitcher/ThemeTwister
sudo chmod 755 /usr/share/ThemeSwitcher/Backup/restore-original-config.sh
sudo chmod 755 /usr/share/ThemeSwitcher/uninstall.sh
sudo chmod 755 /usr/share/ThemeSwitcher/restore-twisterui-splash.sh

sudo chown -R root:root /usr/share/ThemeSwitcher

if test -f "/usr/share/plymouth/themes/mint-logo/logo.png"; then
    sudo mv -f /usr/share/plymouth/themes/mint-logo/logo.png /usr/share/plymouth/themes/mint-logo/logo-old.png
    sudo mv -f /usr/share/plymouth/themes/mint-logo/spinner.png /usr/share/plymouth/themes/mint-logo/spinner-old.png
    sudo mv -f ./install/plymouth/logo.png /usr/share/plymouth/themes/mint-logo
    sudo mv -f ./install/plymouth/spinner.png /usr/share/plymouth/themes/mint-logo

    sudo chmod 644 /usr/share/plymouth/themes/mint-logo/logo.png
    sudo chmod 644 /usr/share/plymouth/themes/mint-logo/spinner.png

    sudo chown root:root /usr/share/plymouth/themes/mint-logo/logo.png
    sudo chown root:root /usr/share/plymouth/themes/mint-logo/spinner.png
fi

sudo mkdir -p /usr/lib/xfce4/panel/plugins
sudo find /usr/lib/xfce4/panel -type d -exec chmod 755 {} \;
sudo find /usr/lib/xfce4/panel -type f -exec chmod 644 {} \;
sudo chown -R root:root /usr/lib/xfce4/panel

sudo mv -f ./install/dock/libdocklike.la /usr/lib/xfce4/panel/plugins
sudo mv -f ./install/dock/libdocklike.so /usr/lib/xfce4/panel/plugins
sudo mv -f ./install/dock/docklike.desktop /usr/share/xfce4/panel/plugins
sudo mv -f ./install/dock/it/xfce4-docklike-plugin.mo /usr/share/locale/it/LC_MESSAGES
sudo mv -f ./install/dock/ru/xfce4-docklike-plugin.mo /usr/share/locale/ru/LC_MESSAGES
sudo mv -f ./install/dock/tr/xfce4-docklike-plugin.mo /usr/share/locale/tr/LC_MESSAGES
sudo mv -f ./install/dock/es/xfce4-docklike-plugin.mo /usr/share/locale/es/LC_MESSAGES
sudo mv -f ./install/dock/el/xfce4-docklike-plugin.mo /usr/share/locale/el/LC_MESSAGES
sudo mv -f ./install/dock/pt_BR/xfce4-docklike-plugin.mo /usr/share/locale/pt_BR/LC_MESSAGES
sudo mv -f ./install/dock/pt/xfce4-docklike-plugin.mo /usr/share/locale/pt/LC_MESSAGES
sudo mv -f ./install/dock/ja/xfce4-docklike-plugin.mo /usr/share/locale/ja/LC_MESSAGES
sudo mv -f ./install/dock/nl/xfce4-docklike-plugin.mo /usr/share/locale/nl/LC_MESSAGES
sudo mv -f ./install/dock/de/xfce4-docklike-plugin.mo /usr/share/locale/de/LC_MESSAGES
sudo mv -f ./install/dock/pl/xfce4-docklike-plugin.mo /usr/share/locale/pl/LC_MESSAGES
sudo mv -f ./install/dock/fr/xfce4-docklike-plugin.mo /usr/share/locale/fr/LC_MESSAGES

sudo chmod 644 /usr/lib/xfce4/panel/plugins/libdocklike.la
sudo chmod 644 /usr/lib/xfce4/panel/plugins/libdocklike.so
sudo chmod 644 /usr/share/xfce4/panel/plugins/docklike.desktop
sudo chmod 644 /usr/share/locale/it/LC_MESSAGES/xfce4-docklike-plugin.mo
sudo chmod 644 /usr/share/locale/ru/LC_MESSAGES/xfce4-docklike-plugin.mo
sudo chmod 644 /usr/share/locale/tr/LC_MESSAGES/xfce4-docklike-plugin.mo
sudo chmod 644 /usr/share/locale/es/LC_MESSAGES/xfce4-docklike-plugin.mo
sudo chmod 644 /usr/share/locale/el/LC_MESSAGES/xfce4-docklike-plugin.mo
sudo chmod 644 /usr/share/locale/pt_BR/LC_MESSAGES/xfce4-docklike-plugin.mo
sudo chmod 644 /usr/share/locale/pt/LC_MESSAGES/xfce4-docklike-plugin.mo
sudo chmod 644 /usr/share/locale/ja/LC_MESSAGES/xfce4-docklike-plugin.mo
sudo chmod 644 /usr/share/locale/nl/LC_MESSAGES/xfce4-docklike-plugin.mo
sudo chmod 644 /usr/share/locale/de/LC_MESSAGES/xfce4-docklike-plugin.mo
sudo chmod 644 /usr/share/locale/pl/LC_MESSAGES/xfce4-docklike-plugin.mo
sudo chmod 644 /usr/share/locale/fr/LC_MESSAGES/xfce4-docklike-plugin.mo

sudo chown root:root /usr/lib/xfce4/panel/plugins/libdocklike.la
sudo chown root:root /usr/lib/xfce4/panel/plugins/libdocklike.so
sudo chown root:root /usr/share/xfce4/panel/plugins/docklike.desktop
sudo chown root:root /usr/share/locale/it/LC_MESSAGES/xfce4-docklike-plugin.mo
sudo chown root:root /usr/share/locale/ru/LC_MESSAGES/xfce4-docklike-plugin.mo
sudo chown root:root /usr/share/locale/tr/LC_MESSAGES/xfce4-docklike-plugin.mo
sudo chown root:root /usr/share/locale/es/LC_MESSAGES/xfce4-docklike-plugin.mo
sudo chown root:root /usr/share/locale/el/LC_MESSAGES/xfce4-docklike-plugin.mo
sudo chown root:root /usr/share/locale/pt_BR/LC_MESSAGES/xfce4-docklike-plugin.mo
sudo chown root:root /usr/share/locale/pt/LC_MESSAGES/xfce4-docklike-plugin.mo
sudo chown root:root /usr/share/locale/ja/LC_MESSAGES/xfce4-docklike-plugin.mo
sudo chown root:root /usr/share/locale/nl/LC_MESSAGES/xfce4-docklike-plugin.mo
sudo chown root:root /usr/share/locale/de/LC_MESSAGES/xfce4-docklike-plugin.mo
sudo chown root:root /usr/share/locale/pl/LC_MESSAGES/xfce4-docklike-plugin.mo
sudo chown root:root /usr/share/locale/fr/LC_MESSAGES/xfce4-docklike-plugin.mo

sudo mv -f ./install/Backgrounds ~/

sudo find ~/Backgrounds -type d -exec chmod 755 {} \;
sudo find ~/Backgrounds -type f -exec chmod 644 {} \;

sudo chmod 755 ~/Backgrounds/start.sh
sudo chmod 755 ~/Backgrounds/dynawall

sudo chown -R $USER:$USER ~/Backgrounds

echo "[Desktop Entry]
Name=Dynamic Wallpaper
Comment=Configure dynamically-changing wallpaper
Exec=${HOME}/Backgrounds/start.sh
Icon=dynamicwallpaper
Version=1.0
Type=Application
Terminal=false
StartupNotify=true
Categories=Settings;X-XFCE-SettingsDialog;X-XFCE-PersonalSettings;" > ~/dynamicwallpaper.desktop

sudo mv -f ~/dynamicwallpaper.desktop /usr/share/applications

sudo chmod 644 /usr/share/applications/dynamicwallpaper.desktop

sudo chown root:root /usr/share/applications/dynamicwallpaper.desktop

sudo rm -r -f ~/.config/GIMP
sudo mv -f ./install/GIMP ~/.config

sudo find ~/.config/GIMP -type d -exec chmod 755 {} \;
sudo find ~/.config/GIMP -type f -exec chmod 644 {} \;

sudo chown -R $USER:$USER ~/.config/GIMP

sudo mv -f ./install/android.sh /usr/local/bin
sudo chmod 755 /usr/local/bin/android.sh
sudo chown root:root /usr/local/bin/android.sh

sudo mv -f ./install/nf-twister /usr/local/bin
sudo chmod 755 /usr/local/bin/nf-twister
sudo chown root:root /usr/local/bin/nf-twister

mkdir -p ~/.local/share/applications
sudo mv -f ./install/local-apps/* ~/.local/share/applications
sudo mv -f ./install/usr-apps/* /usr/share/applications

sudo find ~/.local/share/applications -type d -exec chmod 755 {} \;
sudo find ~/.local/share/applications -type f -exec chmod 644 {} \;
sudo find /usr/share/applications -type d -exec chmod 755 {} \;
sudo find /usr/share/applications -type f -exec chmod 644 {} \;

sudo chown -R $USER:$USER ~/.local/share/applications
sudo chown -R root:root /usr/share/applications

sudo rm -r -f ~/.config/plank
sudo mv -f ./install/dockitems ~/.config/plank

sudo find ~/.config/plank -type d -exec chmod 755 {} \;
sudo find ~/.config/plank -type f -exec chmod 644 {} \;

sudo chown -R $USER:$USER ~/.config/plank

mkdir -p ~/.config/autostart
sudo mv -f ./install/autostart/* ~/.config/autostart

sudo find ~/.config/autostart -type d -exec chmod 755 {} \;
sudo find ~/.config/autostart -type f -exec chmod 644 {} \;

sudo chown -R $USER:$USER ~/.config/autostart

echo "[Desktop Entry]
Encoding=UTF-8
Version=0.9.4
Type=Application
Name=DynamicWallpaper
Comment=Dynamically-changing wallpaper
Exec=${HOME}/Backgrounds/dynawall
StartupNotify=false
Terminal=false
Hidden=false
OnlyShowIn=XFCE;" > ~/.config/autostart/DynamicWallpaper.desktop

sudo chmod 644 ~/.config/autostart/DynamicWallpaper.desktop

sudo chown $USER:$USER ~/.config/autostart/DynamicWallpaper.desktop

sudo rm -r -f ~/.config/neofetch
sudo mv -f ./install/neofetch ~/.config

sudo find ~/.config/neofetch -type d -exec chmod 755 {} \;
sudo find ~/.config/neofetch -type f -exec chmod 644 {} \;

sudo chown -R $USER:$USER ~/.config/neofetch

sudo mv -f ./install/WinAmp /usr/share/audacious/Skins

sudo find /usr/share/audacious/Skins/WinAmp -type d -exec chmod 755 {} \;
sudo find /usr/share/audacious/Skins/WinAmp -type f -exec chmod 644 {} \;

sudo chown -R root:root /usr/share/audacious/Skins/WinAmp

sudo mv -f ./install/usr-local-share-notificationcenter /usr/local/share/notificationcenter
sudo mv -f ./install/usr-local-share-spotlight /usr/local/share/spotlight
sudo mv -f ./install/usr-local-share-themetwister /usr/local/share/themetwister

sudo mv -f ./install/notificationcenter /usr/local/bin
sudo mv -f ./install/spotlight /usr/local/bin
sudo mv -f ./install/themetwister /usr/local/bin

sudo find /usr/local/share/notificationcenter -type d -exec chmod 755 {} \;
sudo find /usr/local/share/notificationcenter -type f -exec chmod 644 {} \;
sudo find /usr/local/share/spotlight -type d -exec chmod 755 {} \;
sudo find /usr/local/share/spotlight -type f -exec chmod 644 {} \;
sudo find /usr/local/share/themetwister -type d -exec chmod 755 {} \;
sudo find /usr/local/share/themetwister -type f -exec chmod 644 {} \;

sudo chmod 755 /usr/local/bin/notificationcenter
sudo chmod 755 /usr/local/bin/spotlight
sudo chmod 755 /usr/local/bin/themetwister

sudo chown -R root:root /usr/local/share/notificationcenter
sudo chown -R root:root /usr/local/share/spotlight
sudo chown -R root:root /usr/local/share/themetwister

sudo chown root:root /usr/local/bin/notificationcenter
sudo chown root:root /usr/local/bin/spotlight
sudo chown root:root /usr/local/bin/themetwister

echo "[Desktop Entry]
Name=Twister UI Patcher
Comment=Updates Twister UI
Exec=${HOME}/patcher/patch.sh
Icon=${HOME}/patcher/icons/logo.png
Version=2.0
Type=Application
Terminal=false
StartupNotify=true
Categories=System;" > ~/.local/share/applications/patcher.desktop

sudo chmod 644 ~/.local/share/applications/patcher.desktop

sudo chown $USER:$USER ~/.local/share/applications/patcher.desktop

sudo cp ~/.local/share/applications/scrcpy.desktop ~/Desktop
sudo cp /usr/share/applications/steam.desktop ~/Desktop
sudo cp /usr/share/applications/net.lutris.Lutris.desktop ~/Desktop
sudo cp /usr/share/applications/themetwister.desktop ~/Desktop
sudo cp /usr/share/discord/discord.desktop ~/Desktop

sudo chmod 755 ~/Desktop/scrcpy.desktop
sudo chmod 755 ~/Desktop/steam.desktop
sudo chmod 755 ~/Desktop/net.lutris.Lutris.desktop
sudo chmod 755 ~/Desktop/themetwister.desktop
sudo chmod 755 ~/Desktop/discord.desktop

sudo chown $USER:$USER ~/Desktop/scrcpy.desktop
sudo chown $USER:$USER ~/Desktop/steam.desktop
sudo chown $USER:$USER ~/Desktop/net.lutris.Lutris.desktop
sudo chown $USER:$USER ~/Desktop/themetwister.desktop
sudo chown $USER:$USER ~/Desktop/discord.desktop

sudo mv -f ./install/twistver /usr/local/bin
sudo chmod 755 /usr/local/bin/twistver
sudo chown root:root /usr/local/bin/twistver

if test -f "/usr/share/plymouth/themes/xubuntu-logo/logo.png"; then
    sudo mv -f /usr/share/plymouth/themes/xubuntu-logo/logo.png /usr/share/plymouth/themes/xubuntu-logo/logo-old.png
    sudo mv -f /usr/share/plymouth/themes/xubuntu-logo/logo_16bit.png /usr/share/plymouth/themes/xubuntu-logo/logo_16bit-old.png
    sudo mv -f /usr/share/plymouth/themes/xubuntu-logo/spinner.png /usr/share/plymouth/themes/xubuntu-logo/spinner-old.png
    sudo mv -f ./install/xubuntu/logo.png /usr/share/plymouth/themes/xubuntu-logo
    sudo mv -f ./install/xubuntu/logo_16bit.png /usr/share/plymouth/themes/xubuntu-logo
    sudo mv -f ./install/xubuntu/spinner.png /usr/share/plymouth/themes/xubuntu-logo

    sudo chmod 644 /usr/share/plymouth/themes/xubuntu-logo/logo.png
    sudo chmod 644 /usr/share/plymouth/themes/xubuntu-logo/logo_16bit.png
    sudo chmod 644 /usr/share/plymouth/themes/xubuntu-logo/spinner.png

    sudo chown root:root /usr/share/plymouth/themes/xubuntu-logo/logo.png
    sudo chown root:root /usr/share/plymouth/themes/xubuntu-logo/logo_16bit.png
    sudo chown root:root /usr/share/plymouth/themes/xubuntu-logo/spinner.png

    sudo rm -f /etc/lightdm/lightdm-gtk-greeter.conf
    sudo mv -f ./install/xubuntu/lightdm-gtk-greeter.conf /etc/lightdm

    sudo chmod 644 /etc/lightdm/lightdm-gtk-greeter.conf

    sudo chown root:root /etc/lightdm/lightdm-gtk-greeter.conf

    sudo rm -r -f /usr/share/ThemeSwitcher/iRaspbian/panel
    sudo rm -r -f /usr/share/ThemeSwitcher/iRaspbian/xfconf
    sudo rm -r -f /usr/share/ThemeSwitcher/iRaspbian-Dark/panel
    sudo rm -r -f /usr/share/ThemeSwitcher/iRaspbian-Dark/xfconf
    sudo rm -r -f /usr/share/ThemeSwitcher/iRaspbianSur/panel
    sudo rm -r -f /usr/share/ThemeSwitcher/iRaspbianSur/xfconf
    sudo rm -r -f /usr/share/ThemeSwitcher/iRaspbianSur-Dark/panel
    sudo rm -r -f /usr/share/ThemeSwitcher/iRaspbianSur-Dark/xfconf
    sudo rm -r -f /usr/share/ThemeSwitcher/Nighthawk/panel
    sudo rm -r -f /usr/share/ThemeSwitcher/Nighthawk/xfconf
    sudo rm -r -f /usr/share/ThemeSwitcher/Raspbian7/panel
    sudo rm -r -f /usr/share/ThemeSwitcher/Raspbian7/xfconf
    sudo rm -r -f /usr/share/ThemeSwitcher/Raspbian95/panel
    sudo rm -r -f /usr/share/ThemeSwitcher/Raspbian95/xfconf
    sudo rm -r -f /usr/share/ThemeSwitcher/RaspbianX/panel
    sudo rm -r -f /usr/share/ThemeSwitcher/RaspbianX/xfconf
    sudo rm -r -f /usr/share/ThemeSwitcher/RaspbianXP/panel
    sudo rm -r -f /usr/share/ThemeSwitcher/RaspbianXP/xfconf
    sudo rm -r -f /usr/share/ThemeSwitcher/Twister11/panel
    sudo rm -r -f /usr/share/ThemeSwitcher/Twister11/xfconf
    sudo rm -r -f /usr/share/ThemeSwitcher/Twister11-Dark/panel
    sudo rm -r -f /usr/share/ThemeSwitcher/Twister11-Dark/xfconf
    sudo rm -r -f /usr/share/ThemeSwitcher/TwisterOS/panel
    sudo rm -r -f /usr/share/ThemeSwitcher/TwisterOS/xfconf
    sudo rm -r -f /usr/share/ThemeSwitcher/TwisterOS-Dark/panel
    sudo rm -r -f /usr/share/ThemeSwitcher/TwisterOS-Dark/xfconf

    sudo rm -r -f /usr/share/ThemeSwitcher/Backup/iRaspbian/panel
    sudo rm -r -f /usr/share/ThemeSwitcher/Backup/iRaspbian/xfconf
    sudo rm -r -f /usr/share/ThemeSwitcher/Backup/iRaspbian-Dark/panel
    sudo rm -r -f /usr/share/ThemeSwitcher/Backup/iRaspbian-Dark/xfconf
    sudo rm -r -f /usr/share/ThemeSwitcher/Backup/iRaspbianSur/panel
    sudo rm -r -f /usr/share/ThemeSwitcher/Backup/iRaspbianSur/xfconf
    sudo rm -r -f /usr/share/ThemeSwitcher/Backup/iRaspbianSur-Dark/panel
    sudo rm -r -f /usr/share/ThemeSwitcher/Backup/iRaspbianSur-Dark/xfconf
    sudo rm -r -f /usr/share/ThemeSwitcher/Backup/Nighthawk/panel
    sudo rm -r -f /usr/share/ThemeSwitcher/Backup/Nighthawk/xfconf
    sudo rm -r -f /usr/share/ThemeSwitcher/Backup/Raspbian7/panel
    sudo rm -r -f /usr/share/ThemeSwitcher/Backup/Raspbian7/xfconf
    sudo rm -r -f /usr/share/ThemeSwitcher/Backup/Raspbian95/panel
    sudo rm -r -f /usr/share/ThemeSwitcher/Backup/Raspbian95/xfconf
    sudo rm -r -f /usr/share/ThemeSwitcher/Backup/RaspbianX/panel
    sudo rm -r -f /usr/share/ThemeSwitcher/Backup/RaspbianX/xfconf
    sudo rm -r -f /usr/share/ThemeSwitcher/Backup/RaspbianXP/panel
    sudo rm -r -f /usr/share/ThemeSwitcher/Backup/RaspbianXP/xfconf
    sudo rm -r -f /usr/share/ThemeSwitcher/Backup/Twister11/panel
    sudo rm -r -f /usr/share/ThemeSwitcher/Backup/Twister11/xfconf
    sudo rm -r -f /usr/share/ThemeSwitcher/Backup/Twister11-Dark/panel
    sudo rm -r -f /usr/share/ThemeSwitcher/Backup/Twister11-Dark/xfconf
    sudo rm -r -f /usr/share/ThemeSwitcher/Backup/TwisterOS/panel
    sudo rm -r -f /usr/share/ThemeSwitcher/Backup/TwisterOS/xfconf
    sudo rm -r -f /usr/share/ThemeSwitcher/Backup/TwisterOS-Dark/panel
    sudo rm -r -f /usr/share/ThemeSwitcher/Backup/TwisterOS-Dark/xfconf

    sudo cp -r ./install/xubuntu/iRaspbian/* /usr/share/ThemeSwitcher/Backup/iRaspbian
    sudo cp -r ./install/xubuntu/iRaspbian-Dark/* /usr/share/ThemeSwitcher/Backup/iRaspbian-Dark
    sudo cp -r ./install/xubuntu/iRaspbianSur/* /usr/share/ThemeSwitcher/Backup/iRaspbianSur
    sudo cp -r ./install/xubuntu/iRaspbianSur-Dark/* /usr/share/ThemeSwitcher/Backup/iRaspbianSur-Dark
    sudo cp -r ./install/xubuntu/Nighthawk/* /usr/share/ThemeSwitcher/Backup/Nighthawk
    sudo cp -r ./install/xubuntu/Raspbian7/* /usr/share/ThemeSwitcher/Backup/Raspbian7
    sudo cp -r ./install/xubuntu/Raspbian95/* /usr/share/ThemeSwitcher/Backup/Raspbian95
    sudo cp -r ./install/xubuntu/RaspbianX/* /usr/share/ThemeSwitcher/Backup/RaspbianX
    sudo cp -r ./install/xubuntu/RaspbianXP/* /usr/share/ThemeSwitcher/Backup/RaspbianXP
    sudo cp -r ./install/xubuntu/Twister11/* /usr/share/ThemeSwitcher/Backup/Twister11
    sudo cp -r ./install/xubuntu/Twister11-Dark/* /usr/share/ThemeSwitcher/Backup/Twister11-Dark
    sudo cp -r ./install/xubuntu/TwisterOS/* /usr/share/ThemeSwitcher/Backup/TwisterOS
    sudo cp -r ./install/xubuntu/TwisterOS-Dark/* /usr/share/ThemeSwitcher/Backup/TwisterOS-Dark

    sudo mv -f ./install/xubuntu/iRaspbian/* /usr/share/ThemeSwitcher/iRaspbian
    sudo mv -f ./install/xubuntu/iRaspbian-Dark/* /usr/share/ThemeSwitcher/iRaspbian-Dark
    sudo mv -f ./install/xubuntu/iRaspbianSur/* /usr/share/ThemeSwitcher/iRaspbianSur
    sudo mv -f ./install/xubuntu/iRaspbianSur-Dark/* /usr/share/ThemeSwitcher/iRaspbianSur-Dark
    sudo mv -f ./install/xubuntu/Nighthawk/* /usr/share/ThemeSwitcher/Nighthawk
    sudo mv -f ./install/xubuntu/Raspbian7/* /usr/share/ThemeSwitcher/Raspbian7
    sudo mv -f ./install/xubuntu/Raspbian95/* /usr/share/ThemeSwitcher/Raspbian95
    sudo mv -f ./install/xubuntu/RaspbianX/* /usr/share/ThemeSwitcher/RaspbianX
    sudo mv -f ./install/xubuntu/RaspbianXP/* /usr/share/ThemeSwitcher/RaspbianXP
    sudo mv -f ./install/xubuntu/Twister11/* /usr/share/ThemeSwitcher/Twister11
    sudo mv -f ./install/xubuntu/Twister11-Dark/* /usr/share/ThemeSwitcher/Twister11-Dark
    sudo mv -f ./install/xubuntu/TwisterOS/* /usr/share/ThemeSwitcher/TwisterOS
    sudo mv -f ./install/xubuntu/TwisterOS-Dark/* /usr/share/ThemeSwitcher/TwisterOS-Dark

    sudo find /usr/share/ThemeSwitcher -type d -exec chmod 755 {} \;
    sudo find /usr/share/ThemeSwitcher -type f -exec chmod 644 {} \;

    sudo chmod 755 /usr/share/ThemeSwitcher/ThemeTwister
    sudo chmod 755 /usr/share/ThemeSwitcher/Backup/restore-original-config.sh
    sudo chmod 755 /usr/share/ThemeSwitcher/uninstall.sh
    sudo chmod 755 /usr/share/ThemeSwitcher/restore-twisterui-splash.sh

    sudo chown -R root:root /usr/share/ThemeSwitcher

    sudo rm -r -f ~/.config/plank
    sudo mv -f ./install/xubuntu/dockitems ~/.config/plank

    sudo find ~/.config/plank -type d -exec chmod 755 {} \;
    sudo find ~/.config/plank -type f -exec chmod 644 {} \;

    sudo chown -R $USER:$USER ~/.config/plank
fi

echo "[PlankDockItemPreferences]
Launcher=file://${HOME}/.local/share/applications/gimp.desktop" > ~/.config/plank/dock1/launchers/gimp.dockitem

sudo chmod 644 ~/.config/plank/dock1/launchers/gimp.dockitem

sudo chown $USER:$USER ~/.config/plank/dock1/launchers/gimp.dockitem

sudo mv -f ./install/README.pdf ~/Desktop
sudo chmod 644 ~/Desktop/README.pdf
sudo chown $USER:$USER ~/Desktop/README.pdf

sudo rm -r -f ./install

cd ~/
git clone https://github.com/phoenixbyrd/TwistUP-UI patcher

sudo ln -s "${HOME}/patcher/patch.sh" /usr/local/bin/twistpatch
sudo chmod 755 /usr/local/bin/twistpatch

git clone https://github.com/monkaBlyat/ThemeTwister
cd ThemeTwister
meson --prefix=/usr/local -Dbuildtype=release build
cd build
ninja
sudo ninja install
cd ~/
git clone https://github.com/libredeb/lightpad
cd lightpad
meson build --prefix=/usr
cd build
ninja
sudo ninja install
cd ~/


pkill plank
pkill xfce4-panel
sudo rm -f ~/.gtkrc-2.0
sudo rm -f ~/.config/gtk-3.0/gtk.css

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
sudo cp /usr/share/ThemeSwitcher/TwisterOS/logon.mp3 /usr/share/sounds
sudo cp /usr/share/ThemeSwitcher/TwisterOS/gtk.css ~/.config/gtk-3.0
sudo chmod 644 /usr/share/sounds/logon.mp3
sudo chmod 644 ~/.config/gtk-3.0/gtk.css
sudo chown root:root /usr/share/sounds/logon.mp3
sudo chown $USER:$USER ~/.config/gtk-3.0/gtk.css
sudo rm -f ~/Desktop/harddisk.desktop
sudo rm -f ~/.config/autostart/Plank.desktop
xfconf-query -c xfwm4 -p /general/theme -s TwisterOS
xfconf-query -c xfwm4 -p /general/title_alignment -s center
xfconf-query -c xfwm4 -p /general/title_font -s "Noto Sans Bold 11"
xfconf-query -c xfwm4 -p /general/button_layout -s "O|HMC"
xfconf-query -n -t string -c xsettings -p /Gtk/CursorThemeName -s DMZ-Black
xfconf-query -c xsettings -p /Gtk/FontName -s "Noto Sans 11"
xfconf-query -c xsettings -p /Net/IconThemeName -s TwisterOS
xfconf-query -c xsettings -p /Net/ThemeName -s TwisterOS
xfconf-query -n -t string -c xfce4-desktop -p /backdrop/screen0/monitor0/workspace0/last-image -s /usr/share/backgrounds/TwisterOS.png
xfconf-query -n -t string -c xfce4-desktop -p /backdrop/screen0/monitor1/workspace0/last-image -s /usr/share/backgrounds/TwisterOS.png
xfconf-query -n -t string -c xfce4-desktop -p /backdrop/screen0/monitorHDMI/workspace0/last-image -s /usr/share/backgrounds/TwisterOS.png
xfconf-query -n -t string -c xfce4-desktop -p /backdrop/screen0/monitorHDMI1/workspace0/last-image -s /usr/share/backgrounds/TwisterOS.png
xfconf-query -n -t string -c xfce4-desktop -p /backdrop/screen0/monitorHDMI2/workspace0/last-image -s /usr/share/backgrounds/TwisterOS.png
xfconf-query -n -t string -c xfce4-desktop -p /backdrop/screen0/monitorHDMI-1/workspace0/last-image -s /usr/share/backgrounds/TwisterOS.png
xfconf-query -n -t string -c xfce4-desktop -p /backdrop/screen0/monitorHDMI-2/workspace0/last-image -s /usr/share/backgrounds/TwisterOS.png
xfconf-query -n -t string -c xfce4-desktop -p /backdrop/screen0/monitorVirtual1/workspace0/last-image -s /usr/share/backgrounds/TwisterOS.png
xfconf-query -n -t string -c xfce4-desktop -p /backdrop/screen0/monitoreDP/workspace0/last-image -s /usr/share/backgrounds/TwisterOS.png
xfconf-query -n -t string -c xfce4-desktop -p /backdrop/screen0/monitoreDP1/workspace0/last-image -s /usr/share/backgrounds/TwisterOS.png
xfconf-query -n -t string -c xfce4-desktop -p /backdrop/screen0/monitoreDP2/workspace0/last-image -s /usr/share/backgrounds/TwisterOS.png
xfconf-query -n -t string -c xfce4-desktop -p /backdrop/screen0/monitoreDP-1/workspace0/last-image -s /usr/share/backgrounds/TwisterOS.png
xfconf-query -n -t string -c xfce4-desktop -p /backdrop/screen0/monitoreDP-2/workspace0/last-image -s /usr/share/backgrounds/TwisterOS.png
xfconf-query -n -t string -c xfce4-desktop -p /backdrop/screen0/monitorLVDS/workspace0/last-image -s /usr/share/backgrounds/TwisterOS.png
xfconf-query -n -t string -c xfce4-desktop -p /backdrop/screen0/monitorLVDS1/workspace0/last-image -s /usr/share/backgrounds/TwisterOS.png
xfconf-query -n -t string -c xfce4-desktop -p /backdrop/screen0/monitorLVDS2/workspace0/last-image -s /usr/share/backgrounds/TwisterOS.png
xfconf-query -n -t string -c xfce4-desktop -p /backdrop/screen0/monitorLVDS-1/workspace0/last-image -s /usr/share/backgrounds/TwisterOS.png
xfconf-query -n -t string -c xfce4-desktop -p /backdrop/screen0/monitorLVDS-2/workspace0/last-image -s /usr/share/backgrounds/TwisterOS.png

sudo rm -f ~/.*.twid
sudo cp /usr/share/ThemeSwitcher/twisteros.twid ~/.twisteros.twid
sudo chmod 644 ~/.twisteros.twid
sudo chown $USER:$USER ~/.twisteros.twid

sudo update-initramfs -u

clear
read -p "The system will now restart. When ready, press [Enter] to continue..."
sudo reboot

