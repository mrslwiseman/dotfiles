if [[ "$(uname)" == "Linux" ]]; then
    source /usr/share/doc/fzf/examples/key-bindings.zsh
    source /usr/share/doc/fzf/examples/completion.zsh
elif [[ "$(uname)" == "Darwin" ]]; then
    # this file is generated by the fzf install command run in setup.sh
    source ~/.fzf.zsh
else
    echo "This is an unknown operating system."
fi
