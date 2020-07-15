set -x

sudo apt install tree &&
# vscode
echo "installing vscode" &&
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg &&
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add - &&
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" &&
sudo apt -y update &&
sudo apt -y install code &&
echo installation complete
