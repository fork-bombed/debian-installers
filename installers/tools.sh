# Setup Directory
mkdir ~/pentesting > /dev/null
cd ~/pentesting

# SecLists
git clone https://github.com/danielmiessler/SecLists.git

# Ghidra Installation
ghidra_url="https://ghidra-sre.org/"
ghidra_version="ghidra_9.1.2_PUBLIC_20200212.zip"
location=${ghidra_version%_*}

wget "${ghidra_url}${ghidra_version}"
unzip $ghidra_version > /dev/null && rm $ghidra_version
mv $location ghidra
# Fix weird symlink problem with Ghidra's runner
cat > ghidra/ghidraRun <<- EOM
#!/usr/bin/env bash
~/pentesting/ghidra/support/launch.sh bg Ghidra "" "" ghidra.GhidraRun "$@"
EOM

sudo ln -s ~/pentesting/ghidra/ghidraRun /usr/local/bin/ghidra