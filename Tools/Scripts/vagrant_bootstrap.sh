VAGRANT_HOME=/home/vagrant

apt-get update

apt-get install -y git
apt-get install -y python3-pip
apt-get install -y zsh

su vagrant

cd /home/vagrant

wget --quiet https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | sh
wget --quiet https://raw.githubusercontent.com/Bookmark-Novels/Resources/master/Configuration%20Files/.zshrc -O $VAGRANT_HOME/.zshrc
chsh -s /bin/zsh vagrant
