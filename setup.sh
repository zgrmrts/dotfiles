# dotfiles relative to home
export DOTFILES_RELATIVE="git/dotfiles"
# full path
export DOTFILES=${HOME}/${DOTFILES_RELATIVE}

# git configuration
sudo apt install git &&
sudo apt install gitk &&
git config --global user.name "Ozgur Murat" &&
git config --global user.email zgrmrts@gmail.com &&
git config --global core.editor vi &&

# vim configuration
mkdir -p ~/.vim/backup &&
mkdir -p ~/.vim/swap &&
mkdir -p ~/.vim/undo &&
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim &&
ln -s ${DOTFILES}/.vimrc ${HOME}/.vimrc &&
sudo apt install vim &&
sudo apt install vim-gtk &&
vim +PluginInstall +qall &&

# startup scripts
echo "# my special configuration" >> ~/.bashrc &&
echo "export DOTFILES=\${HOME}/${DOTFILES_RELATIVE}" >> ~/.bashrc &&
echo "source \${DOTFILES}/.bashrc" >> ~/.bashrc &&

echo "# my special configuration" >> ~/.profile &&
echo "export DOTFILES=\${HOME}/${DOTFILES_RELATIVE}" >> ~/.profile &&
echo "source \${DOTFILES}/.profile" >> ~/.profile &&

# my directory structure
mkdir -p ${HOME}/bin &&
mkdir -p ${HOME}/recycle &&

# terminator configuration file
sudo apt install terminator &&
mkdir -p ${HOME}/.config/terminator/ &&
ln -s ${DOTFILES}/.config/terminator/config ${HOME}/.config/terminator/config &&

# astylerc
ln -s ${DOTFILES}/etc/astylerc ${HOME}/.astylerc &&

# minicom setup & tty permissions
sudo apt install minicom &&
sudo usermod -a -G dialout ${USER} &&
sudo cp ${DOTFILES}/setup/minicom/* /etc/minicom/. &&

# install
sudo apt install autoconf automake libtool &&
sudo apt install make g++ gcc &&
sudo apt install dialog &&
sudo apt install meld &&
sudo apt install mc &&
sudo apt install sqlite &&
sudo apt install synaptic &&
sudo apt install gnome-tweaks &&
sudo apt install devhelp &&
sudo apt install cppreference-doc-en-html &&
sudo apt install cowsay &&
sudo apt install lolcat &&
sudo apt install wmctrl &&
sudo apt install okteta &&
sudo apt install virtualbox &&
sudo apt install htop &&

echo installation complete
