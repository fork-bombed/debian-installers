# Fix screen tearing

sudo mkdir /etc/X11/xorg.conf.d
sudo touch /etc/X11/xorg.conf.d/20-intel.conf

settings="Section \"Device\"
   Identifier  \"Intel Graphics\"
   Driver      \"intel\"
   Option      \"TearFree\"    \"true\"
EndSection"

echo $settings | sudo tee -a /etc/X11/xorg.conf.d/20-intel.conf > /dev/null
