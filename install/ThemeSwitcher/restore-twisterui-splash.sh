#!/bin/bash
echo "Restoring Twister UI splash screen..."

sudo cp /usr/share/icons/Catalina/notification-symbolic.svg /usr/share/icons/hicolor/scalable/status

sudo chmod 644 /usr/share/icons/hicolor/scalable/status/notification-symbolic.svg

sudo chown root:root /usr/share/icons/hicolor/scalable/status/notification-symbolic.svg

if test -f "/usr/share/plymouth/themes/mint-logo/logo.png"; then
    sudo cp /usr/share/ThemeSwitcher/mint/logo.png /usr/share/plymouth/themes/mint-logo
    sudo cp /usr/share/ThemeSwitcher/mint/spinner.png /usr/share/plymouth/themes/mint-logo

    sudo chmod 644 /usr/share/plymouth/themes/mint-logo/logo.png
    sudo chmod 644 /usr/share/plymouth/themes/mint-logo/spinner.png

    sudo chown root:root /usr/share/plymouth/themes/mint-logo/logo.png
    sudo chown root:root /usr/share/plymouth/themes/mint-logo/spinner.png
fi

if test -f "/usr/share/plymouth/themes/xubuntu-logo/logo.png"; then
    sudo cp /usr/share/ThemeSwitcher/xubuntu/logo.png /usr/share/plymouth/themes/xubuntu-logo
    sudo cp /usr/share/ThemeSwitcher/xubuntu/logo_16bit.png /usr/share/plymouth/themes/xubuntu-logo
    sudo cp /usr/share/ThemeSwitcher/xubuntu/spinner.png /usr/share/plymouth/themes/xubuntu-logo

    sudo chmod 644 /usr/share/plymouth/themes/xubuntu-logo/logo.png
    sudo chmod 644 /usr/share/plymouth/themes/xubuntu-logo/logo_16bit.png
    sudo chmod 644 /usr/share/plymouth/themes/xubuntu-logo/spinner.png

    sudo chown root:root /usr/share/plymouth/themes/xubuntu-logo/logo.png
    sudo chown root:root /usr/share/plymouth/themes/xubuntu-logo/logo_16bit.png
    sudo chown root:root /usr/share/plymouth/themes/xubuntu-logo/spinner.png
fi

sudo update-initramfs -u

