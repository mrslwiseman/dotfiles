alias gs="git status -sb"
function gb() {
    git checkout $(git branch | fzf)
}

# prune branches
function gpb(){
    git fetch -p
    git branch -vv | grep ': gone]'|  grep -v "\*" | awk '{ print $1; }' | xargs -r git branch -d
}