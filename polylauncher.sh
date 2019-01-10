killall -q polybar

while pgrep -u $UID -x polybar > /dev/null; do sleep 1; done

polybar -c ~/initscripts/configV2 example
