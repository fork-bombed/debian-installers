# Install snap store

sudo apt install -y snapd

# Install Java

sudo apt install -y default-jdk
sudo apt install -y python3-pip

declare -a snaps=(

	# Daily Applications

	"discord"
	"spotify"
	"zoom-client"
	"htop"
	"snap-store"

	)

for app in "${snaps[@]}" 
do
	sudo snap install "$app"
done

sudo snap install code --classic 
sudo snap install eclipse --classic


# Fish

sudo apt install -y fish
chsh -s /usr/bin/fish

curl -L https://get.oh-my.fish | fish
omf install agnoster

# Fix fonts for agnoster
git clone https://github.com/abertsch/Menlo-for-Powerline.git
cd Menlo-for-Powerline
sudo mv *.tff /usr/share/fonts
cd ..
rm -rf Menlo-for-Powerline

# neofetch on startup
sudo apt install neofetch
echo 'neofetch --colors 51 51 7 5 4 51 --ascii_colors 5 51' > ~/.config/fish/config.fish

# Finishing message

printf "\n\n$(tput bold)Installation complete, please reboot your PC...\n\n$(tput sgr0)"
