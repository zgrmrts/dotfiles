# Install Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh &&
# Install Wasm
curl https://rustwasm.github.io/wasm-pack/installer/init.sh -sSf | sh &&
# Install NVM
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash &&
# Install deno
curl -fsSL https://deno.land/x/install/install.sh | sh &&

# Install docker
sudo apt install -y docker.io &&
sudo usermod -aG docker $USER &&

# install
sudo apt -y install gitk &&
sudo apt -y install mc &&
sudo apt -y install vim-gtk &&
sudo apt -y install make g++ gcc &&
sudo apt -y install dialog &&
sudo apt -y install htop &&
sudo apt -y install curl &&

# astylerc
ln -s ${DOTFILES}/etc/astylerc ${HOME}/.astylerc &&

echo extra installation complete
