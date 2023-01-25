# source all .zsh files
for f in ./*.zsh; do
    source $f
done

source $HOME/.localrc >/dev/null
