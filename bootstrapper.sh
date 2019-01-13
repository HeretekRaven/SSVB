#!/bin/bash



#Basic installations(light)
echo "Starting Base Installation";
sudo xbps-install -Syu || echo "critical failure1" >> ErrorLog.txt;
sudo xbps-install -y xorg || echo "critical failure2" >> ErrorLog.txt;
sudo xbps-install -y alsa-utils || echo "critical failure3" >> ErrorLog.txt;
sudo xbps-install -y xterm || echo "critical failure"4 >> ErrorLog.txt;
sudo xbps-install -y konsole || echo "critical failure5" >> ErrorLog.txt;
sudo xbps-install -y xorg-xinit || echo "critical failure6" >> ErrorLog.txt; #Double check name
sudo xbps-install -y i3-gaps || echo "critical failure7" >> ErrorLog.txt;
sudo xbps-install -y i3status || echo "critical failure8" >> ErrorLog.txt;
#sudo xbps-install -y xorg-twm || echo "critical failure"; #Double check name
sudo xbps-install -y ranger || echo "critical failure9" >> ErrorLog.txt;
sudo xbps-install -y connman || echo "critical failure10" >> ErrorLog.txt;
sudo xbps-install -y cmst || echo "critical failure11" >> ErrorLog.txt;
sudo xbps-install -y htop || echo "critical failure12" >> ErrorLog.txt;
sudo xbps-install -y compton || echo "critical failure13" >> ErrorLog.txt;
sudo xbps-install -y feh || echo "critical failure14" >> ErrorLog.txt;
sudo xbps-install -y dmenu || echo "critical failure15" >> ErrorLog.txt;
sudo xbps-install -y nano || echo "critical failure16" >> ErrorLog.txt;

#The rest of the fun stuff
echo "Starting Main Installation";
sudo xbps-install -y sxiv || echo "critical failure(II)1" >> ErrorLog.txt;
sudo xbps-install -y chromium || echo "critical failure(II)2" >> ErrorLog.txt;
sudo xbps-install -y polybar || echo "critical failure(II)3" >> ErrorLog.txt;
sudo xbps-install -y neofetch || echo "critical failure(II)4" >> ErrorLog.txt;
sudo xbps-install -y gimp || echo "critical failure(II)5" >> ErrorLog.txt;
sudo xbps-install -y ImageMagick || echo "critical failure(II)6" >> ErrorLog.txt;
sudo xbps-install -y xrandr || echo "critical failure(II)" >> ErrorLog.txt;

#Dot file setup/creation
echo "Setting up dot files";
#sudo xbps-install -y git || echo "critical failure(III)";
sudo cp /home/$USER/initscripts/.xinitrc /home/$USER;
sudo mkdir /home/$USER/.config/i3;
sudo cp /home/$USER/initscripts/config /home/$USER/.config/i3;
sudo chmod +x polylauncher.sh multi-screen.sh;
sudo Xorg -configure;

echo "Setup should be complete. If something is missing, check the initscripts folder for an error log.";
sleep 5s;
startx;
