# Install snap store

sudo apt install -y snapd

# Install Java

sudo apt install -y default-jdk

declare -a snaps=(

	# Daily Applications

	"discord"
	"firefox"
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

# Finishing message

printf "\n\n$(tput bold)Installation complete, please reboot your PC...\n\n$(tput sgr0)"
