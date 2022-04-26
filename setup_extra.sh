set -evxu

# Install docker
sudo apt install -y docker.io
sudo usermod -aG docker $USER

# install from apt
sudo apt -y install gitk
sudo apt -y install mc
sudo apt -y install vim-gtk
sudo apt -y install make g++ gcc
sudo apt -y install htop
sudo apt -y install curl
sudo apt -y install plocate
sudo apt -y install default-jdk


# install from snap
snap install --classic code
snap install skype discord drawio spotify teams-for-linux zoom-client zulip

# Install Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
# Install NVM
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash
# Install deno
curl -fsSL https://deno.land/x/install/install.sh | sh
# Install Wasm
curl https://rustwasm.github.io/wasm-pack/installer/init.sh -sSf | sh

# astylerc
ln -s ${DOTFILES}/etc/astylerc ${HOME}/.astylerc

echo extra installation complete
