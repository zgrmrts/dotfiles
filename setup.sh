set -x
# dotfiles relative to home
export DOTFILES_RELATIVE="git/dotfiles"
# full path
export DOTFILES=${HOME}/${DOTFILES_RELATIVE}

# git configuration
sudo apt -y install git &&
sudo apt -y install gitk &&
git config --global user.name "Ozgur Murat" &&
git config --global user.email zgrmrts@gmail.com &&
git config --global core.editor vi &&

# vim configuration
mkdir -p ~/.vim/backup &&
mkdir -p ~/.vim/swap &&
mkdir -p ~/.vim/undo &&
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim &&
ln -s ${DOTFILES}/.vimrc ${HOME}/.vimrc &&
sudo apt -y install vim &&
sudo apt -y install vim-gtk &&
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
sudo apt -y install terminator &&
mkdir -p ${HOME}/.config/terminator/ &&
ln -s ${DOTFILES}/.config/terminator/config ${HOME}/.config/terminator/config &&
ln -s ${DOTFILES}/.local/share/applications/termicustom.desktop ${HOME}/.local/share/applications/termicustom.desktop &&
# astylerc
ln -s ${DOTFILES}/etc/astylerc ${HOME}/.astylerc &&

# special history & pwd
mkdir ~/.qw-env &&

# install
sudo apt -y install mc &&
sudo apt -y install gnome-tweaks &&
sudo apt -y install wmctrl &&

echo installation complete
