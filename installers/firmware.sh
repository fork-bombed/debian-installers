# Update sources to allow non-free

sudo echo "deb http://deb.debian.org/debian buster main contrib non-free
deb-src http://deb.debian.org/debian buster main contrib non-free
deb http://deb.debian.org/debian-security/ buster/updates main contrib non-free
deb-src http://deb.debian.org/debian-security/ buster/updates main contrib non-free
deb http://deb.debian.org/debian buster-updates main contrib non-free
deb-src http://deb.debian.org/debian buster-updates main contrib non-free" > /etc/apt/sources.list


# Update & upgrade packages

sudo apt update -y && sudo apt upgrade -y
sudo apt install -y firmware-iwlwifi nvidia-driver


# Fix inverted scrolling

echo 'Section "InputClass"
        Identifier "libinput touchpad catchall"
        MatchIsTouchpad "on"
        MatchDevicePath "/dev/input/event*"
        Driver "libinput"
        Option "NaturalScrolling" "true"
        Option "Tapping" "on"
EndSection' | sudo tee -a /etc/X11/xorg.conf.d/40-libinput.conf > /dev/null