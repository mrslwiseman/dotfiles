echo "linking .zimrc file"
ln -s $HOME/.dotfiles/.zimrc.symlink $HOME/.zimrc

echo "linking .zshrc file"
ln -s $HOME/.dotfiles/.zshrc.symlink $HOME/.zshrc

echo "linking .gitconfig file"
ln -s $HOME/.dotfiles/gitconfig.symlink $HOME/.gitconfig

echo "installing zim"
curl -fsSL https://raw.githubusercontent.com/zimfw/install/master/install.zsh | zsh

echo "installing starship"
curl -sS https://starship.rs/install.sh | sh
