KUBECONFIG=$1
YAMLNAME=$2

export KUBECONFIG=${KUBECONFIG}

kubectl apply -f ./yamls/${YAMLNAME}