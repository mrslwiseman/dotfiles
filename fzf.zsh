if [[ "$(uname)" == "Linux" ]]; then
    source /usr/share/doc/fzf/examples/key-bindings.zsh
    source /usr/share/doc/fzf/examples/completion.zsh
elif [[ "$(uname)" == "Darwin" ]]; then
    echo "This is a Mac OS system."
else
    echo "This is an unknown operating system."
fi
