alias gs="git status -sb"
function gb() {
    git checkout $(git branch | fzf)
}
