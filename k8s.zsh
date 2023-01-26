alias k="kubectl"
alias kall="kubectl get all"
alias kaf="kubectl apply -f"

alias kgp='kubectl get pod'
alias kgap="kubectl get pods -o wide --all-namespaces"
alias kd='kubectl delete pod'

alias gid='kubectl get deployment $1 -o=jsonpath="{..image}"'
# alias gid='kubectl get deployment $1 -o=jsonpath="{$.spec.template.spec.containers[:1].image}"'
# change namespace
alias kcsc='k config set-context --current --namespace'

# sets the context. optional namespace arg

export KUBECONFIG=~/.kube/config
