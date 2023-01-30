# sets the context. optional namespace arg
# kccu <context> <namespace>
kcuc() {
    context=$1
    namespace=$2

    kubectl config use-context $context

    if [[ -n "$namespace" ]]; then
        kubectl config set-context --current --namespace $namespace
        echo "namespace: $namespace"
    fi
}

export KUBECONFIG=~/.kube/config
