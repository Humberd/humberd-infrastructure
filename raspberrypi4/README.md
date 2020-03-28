1.
    kubectl apply --validate=false -f https://github.com/jetstack/cert-manager/releases/download/v0.14.1/cert-manager.crds.yaml

2.
    kubectl create namespace cert-manager

3.
    helm repo add jetstack https://charts.jetstack.io

4.
    helm install cert-manager --namespace cert-manager jetstack/cert-manager

5.
