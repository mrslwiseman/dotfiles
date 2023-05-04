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

if [[ "$(uname)" == "Linux" ]]; then
    echo "This is a Linux system."
elif [[ "$(uname)" == "Darwin" ]]; then
    # install fzf key bindings ( linux is sourced automatically )
    # /opt/homebrew/opt/fzf/install
if [ -n "${commands[fzf-share]}" ]; then
  source "$(fzf-share)/key-bindings.zsh"
  source "$(fzf-share)/completion.zsh"
fi
else
    echo "This is an unknown operating system."
fi
