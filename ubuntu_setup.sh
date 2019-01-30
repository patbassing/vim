# Create folder structure
mkdir ~/git
mkdir ~/.ssh
mkdir ~/Downloads

# Update
sudo apt-get update
sudo apt-get upgrade -y

# Necessary installs
sudo apt-get install -y vim git 

# Git stuff
git config --global user.email "patrick.bassing@gmail.com"
git config --global user.name "patbassing"

# Chrome
cd ~/Downloads
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb

# Gnome Tweak Tool
sudo apt-get install -y gnome-tweak-tool gnome-shell-extensions chrome-gnome-shell

# Python
sudo apt-get install -y python python3 python-pip python3-pip

# VLC
sudo apt-get install -y vlc

# .Net Core
cd ~/Downloads
wget -q https://packages.microsoft.com/config/ubuntu/18.04/packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb
sudo add-apt-repository universe
sudo apt-get install -y apt-transport-https
sudo apt-get update
sudo apt-get install -y dotnet-sdk-2.2

# VS Code
sudo snap install vscode --classic

# Docker
sudo apt-get remove docker docker-engine docker.io containerd runc
sudo apt-get install -y apt-transport-https ca-certificates curl gnupg-agent software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
sudo apt-get update
sudo apt-get install -y docker-ce

# MySQL - https://help.ubuntu.com/lts/serverguide/mysql.html.en
sudo apt-get install -y mysql-server mysql-client mysql-workbench
sudo systemctl restart mysql.service

# Pycharm
sudo snap install pycharm-community --classic

# Rider
sudo snap install rider --classic

# LibreOffice
sudo apt-get install -y libreoffice

# FileZilla
sudo apt-get install -y filezilla

# Games
sudo apt-get install -y warzone2100

# Synology Drive (link may change)
cd ~/Downloads
wget https://global.download.synology.com/download/Tools/SynologyDriveClient/1.1.3-10570/Ubuntu/Installer/x86_64/synology-drive-10570.x86_64.deb
sudo dpkg -i synology-drive-10570.x86_64.deb

# bash and vim setup
cd ~/git
git clone https://github.com/patbassing/vim.git
cd ~/git/vim
cp -a .vim .vimrc .bashrc .bash_aliases ~
source ~/.bashrc
