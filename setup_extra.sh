# minicom setup & tty permissions
sudo apt -y install minicom &&
sudo usermod -a -G dialout ${USER} &&
sudo cp ${DOTFILES}/setup/minicom/* /etc/minicom/. &&

# install
sudo apt -y install autoconf automake libtool &&
sudo apt -y install make g++ gcc &&
sudo apt -y install dialog &&
sudo apt -y install meld &&
sudo apt -y install sqlite &&
sudo apt -y install synaptic &&
sudo apt -y install devhelp &&
sudo apt -y install cppreference-doc-en-html &&
sudo apt -y install cowsay &&
sudo apt -y install lolcat &&
sudo apt -y install okteta &&
sudo apt -y install virtualbox &&
sudo apt -y install htop &&
sudo apt -y install golang-go &&
sudo apt -y install curl &&
sudo apt -y install cargo &&

echo extra installation complete
