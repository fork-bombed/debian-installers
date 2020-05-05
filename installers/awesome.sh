# Fix screen tearing

sudo mkdir /etc/X11/xorg.conf.d
sudo touch /etc/X11/xorg.conf.d/20-intel.conf

settings="Section \"Device\"
   Identifier  \"Intel Graphics\"
   Driver      \"intel\"
   Option      \"TearFree\"    \"true\"
EndSection"

echo $settings | sudo tee -a /etc/X11/xorg.conf.d/20-intel.conf > /dev/null

# Installing Awesome Copycats by lcpz

mkdir ~/.config/awesome

git clone --recursive https://github.com/lcpz/awesome-copycats.git
mv -bv awesome-copycats/* ~/.config/awesome && rm -rf awesome-copycats

# Handles screenshots

sudo apt install -y maim xclip compton