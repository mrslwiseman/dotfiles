alias k="kubectl"
alias kall="kubectl get all"
alias kaf="kubectl apply -f"

alias kgp='kubectl get pod'
alias kgap="kubectl get pods -o wide --all-namespaces"
alias kd='kubectl delete pod'

# change namespace
alias kcuc='k config use-context'
alias kcsc='k config set-context --current --namespace'

# sets the context. optional namespace arg
# kccu <context> <namespace>
kccu(){
    context=$1
    namespace=$2

    next_context=""
  if [[ "$context" = "eks" ]]; then
    next_context="arn:aws:eks:ap-southeast-2:625704270967:cluster/eksctl-test-03"
  elif [[ $context = "bigbird" ]]; then
    next_context="bigbird"
  else
    next_context="home"
  fi
    kubectl config use-context $next_context

  if [[ -n "$namespace" ]]; then
    kubectl config set-context --current --namespace $namespace
  fi
}