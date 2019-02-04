#!/bin/bash



#Basic installations(light)
echo "Starting Base Installation";
sudo xbps-install -Syu || echo "Error Flag 1" >> ErrorLog.txt;
sudo xbps-install -y xorg || echo "Error Flag 2" >> ErrorLog.txt;
sudo xbps-install -y alsa-utils || echo "Error Flag 3" >> ErrorLog.txt;
sudo xbps-install -y xterm || echo "Error Flag 4" >> ErrorLog.txt;
sudo xbps-install -y rxvt-unicode || echo "Error Flag 5" >> ErrorLog.txt;
sudo xbps-install -y i3-gaps || echo "Error Flag 6" >> ErrorLog.txt;
sudo xbps-install -y i3status || echo "Error Flag 7" >> ErrorLog.txt;
sudo xbps-install -y ranger || echo "Error FLag 8" >> ErrorLog.txt;
sudo xbps-install -y connman || echo "Error Flag 9" >> ErrorLog.txt;
sudo xbps-install -y cmst || echo "Error Flag 10" >> ErrorLog.txt;
sudo xbps-install -y htop || echo "Error Flag 11" >> ErrorLog.txt;
sudo xbps-install -y compton || echo "Error Flag 12" >> ErrorLog.txt;
sudo xbps-install -y feh || echo "Error Flag 13" >> ErrorLog.txt;
sudo xbps-install -y dmenu || echo "Error Flag 14" >> ErrorLog.txt;
sudo xbps-install -y nano || echo "Error Flag 15" >> ErrorLog.txt;
sudo xbps-install -y NetworkManager || echo "Error Flag 16" >> ErrorLog.txt
sudo xbps-install -y network-manager-applet || echo "Error Flag 17" >> ErrorLog.txt
sudo xbps-install -y pywal || echo "Error Flag 18" >> ErrorLog.txt

#The rest of the fun stuff
echo "Starting Remainder of Installation";
sudo xbps-install -y sxiv || echo "Error Flag(II) 1" >> ErrorLog.txt;
sudo xbps-install -y surf || echo "Error Flag(II) 2" >> ErrorLog.txt;
sudo xbps-install -y polybar || echo "Error Flag(II) 3" >> ErrorLog.txt;
sudo xbps-install -y neofetch || echo "Error Flag(II) 4" >> ErrorLog.txt;
sudo xbps-install -y gimp || echo "Error Flag(II) 5" >> ErrorLog.txt;
sudo xbps-install -y ImageMagick || echo "Error Flag(II) 6" >> ErrorLog.txt;


#Dot file setup/creation
echo "Setting up dot files...";
sudo cp /home/$SUDO_USER/initscripts/.xinitrc /home/$SUDO_USER;
sudo mkdir /home/$SUDO_USER/.config/i3;
sudo cp /home/$SUDO_USER/initscripts/config /home/$SUDO_USER/.config/i3;
mv /home/$SUDO_USER/initscripts/.Xresources /home/$SUDO_USER;
sudo rm -f /home/$SUDO_USER/.bashrc; sudo mv /home/$SUDO_USER/initscripts/.bashrc /home/$SUDO_USER;
#cd /home/$SUDO_USER/initscripts; sudo chmod +x polylauncher.sh multi-screen.sh;
sudo Xorg -configure;

echo "Setup should be complete. If something is missing, check the initscripts folder for an error log.";
sleep 5s;
startx;
