#!/bin/bash



#Basic installations(light)
echo "Starting Base Installation";
sudo xbps-install -Syu || echo "critical failure";
sudo xbps-install xorg || echo "critical failure";
sudo xbps-install alsa-utils || echo "critical failure";
sudo xbps-install xterm || echo "critical failure";
sudo xbps-install konsole || echo "critical failure";
sudo xbps-install xorg-init || echo "critical failure"; #Double check name
sudo xbps-install i3-gaps || echo "critical failure";
sudo xbps-install i3status || echo "critical failure";
sudo xbps-install xorg-twm || echo "critical failure"; #Double check name
sudo xbps-install ranger || echo "critical failure";
sudo xbps-install connman || echo "critical failure";
sudo xbps-install cmst || echo "critical failure";
sudo xbps-install htop || echo "critical failure";
sudo xbps-install compton || echo "critical failure";
sudo xbps-install feh || echo "critical failure";
sudo xbps-install dmenu || echo "critical failure";
sudo xbps-install nano || echo "critical failure";

#The rest of the fun stuff
echo "Starting Main Installation";
sudo xbps-install sxiv || echo "critical failure(II)";
sudo xbps-install chromium || echo "critical failure(II)";
sudo xbps-install polybar || echo "critical failure(II)";
sudo xbps-install neofetch || echo "critical failure(II)";
sudo xbps-install gimp || echo "critical failure(II)";
sudo xbps-install ImageMagick || echo "critical failure(II)";
sudo xbps-install  || echo "critical failure(II)";

#Dot file setup/creation
echo "Setting up dot files";
sudo xbps-install git || echo "critical failure(III)";
touch .xinitrc; "exec compton &" >> .xinitrc; "exec i3" >> .xinitrc;
sudo Xorg -configure;

echo "Run part II to finish the configuration of i3 and polybar...";
sleep 5s;
startx;
