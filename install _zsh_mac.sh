brew install zsh;
sudo echo "185.199.108.133 raw.githubusercontent.com" >> /etc/hosts;
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)";
chsh -s /bin/zsh;
zsh;
