set -x
# dotfiles relative to home
export DOTFILES_RELATIVE="git/dotfiles"
# full path
export DOTFILES=${HOME}/${DOTFILES_RELATIVE}

# git configuration
sudo apt -y install git &&
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

# terminator configuration file
sudo apt -y install terminator &&
mkdir -p ${HOME}/.config/terminator/ &&
ln -s ${DOTFILES}/.config/terminator/config ${HOME}/.config/terminator/config &&
ln -s ${DOTFILES}/.local/share/applications/termicustom.desktop ${HOME}/.local/share/applications/termicustom.desktop &&

# special history & pwd
mkdir ~/.qw-env &&

echo installation complete
