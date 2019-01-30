if [ -z "$1" ]
   then
      echo "Missing arguments. Command must be in the form:"
      echo "script.sh [MySQL_Root_Password]"
      echo "ex: ubuntu_setup.sh guest"
      exit
fi

# Variables
mysql_root_password="$1"

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
sudo snap install vlc --classic

# Postman
sudo snap install postman --classic

# .Net Core
sudo snap install dotnet-sdk --classic

# JDK
sudo apt-get install -y default-jdk

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
sudo mysql -u root -e "ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY '$mysql_root_password';"

# Pycharm
sudo snap install pycharm-community --classic

# Rider
sudo snap install rider --classic

# LibreOffice
sudo snap install libreoffice --classic

# FileZilla
sudo apt-get install -y filezilla

# Skype
sudo snap install skype --classic

# Spotify
sudo snap install spotify --classic

# Handbrake
sudo snap install handbrake-jz --classic

# Games
sudo snap install warzone2100 --classic
sudo snap install solitaire --classic

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

# Finishing remarks
echo ""
echo ""
echo "Installation done. The following things should be considered manually"
echo " - sudo mysql_secure_installation"
