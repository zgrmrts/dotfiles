export DOTFILES=${HOME}/git/dotfiles

mkdir -p ~/.vim/backup &&
mkdir -p ~/.vim/swap &&
mkdir -p ~/.vim/undo &&

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim &&

ln -s ${DOTFILES}/.vimrc ${HOME}/.vimrc &&

vim +PluginInstall +qall &&

echo "source ${DOTFILES}/.bashrc" >> ~/.bashrc &&
echo "source ${DOTFILES}/.profile" >> ~/.profile &&

echo installation complete
