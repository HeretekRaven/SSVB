#!/bin/bash



#Basic installations(light)
echo "Starting Base Installation";
sudo xbps-install -Syu || echo "critical failure";
sudo xbps-install -y xorg || echo "critical failure";
sudo xbps-install -y alsa-utils || echo "critical failure";
sudo xbps-install -y xterm || echo "critical failure";
sudo xbps-install -y konsole || echo "critical failure";
sudo xbps-install -y xorg-init || echo "critical failure"; #Double check name
sudo xbps-install -y i3-gaps || echo "critical failure";
sudo xbps-install -y i3status || echo "critical failure";
sudo xbps-install -y xorg-twm || echo "critical failure"; #Double check name
sudo xbps-install -y ranger || echo "critical failure";
sudo xbps-install -y connman || echo "critical failure";
sudo xbps-install -y cmst || echo "critical failure";
sudo xbps-install -y htop || echo "critical failure";
sudo xbps-install -y compton || echo "critical failure";
sudo xbps-install -y feh || echo "critical failure";
sudo xbps-install -y dmenu || echo "critical failure";
sudo xbps-install -y nano || echo "critical failure";

#The rest of the fun stuff
echo "Starting Main Installation";
sudo xbps-install -y sxiv || echo "critical failure(II)";
sudo xbps-install -y chromium || echo "critical failure(II)";
sudo xbps-install -y polybar || echo "critical failure(II)";
sudo xbps-install -y neofetch || echo "critical failure(II)";
sudo xbps-install -y gimp || echo "critical failure(II)";
sudo xbps-install -y ImageMagick || echo "critical failure(II)";
#sudo xbps-install -y  || echo "critical failure(II)";

#Dot file setup/creation
echo "Setting up dot files";
sudo xbps-install -y git || echo "critical failure(III)";
touch .xinitrc; "exec compton &" >> .xinitrc; "exec i3" >> .xinitrc;
sudo Xorg -configure;

echo "Run part II to finish the configuration of i3 and polybar...";
sleep 5s;
startx;
