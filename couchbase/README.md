helm repo add couchbase https://couchbase-partners.github.io/helm-charts/

helm repo update

helm template cb-fury-demo  couchbase/couchbase-operator --version 2.3.001 --include-crds --values couchbase-values.yaml > resources/couchbase.yaml


make apply

make apply

kubectl apply -f resources/job-import-data.yaml 

velero backup create couchbase --include-namespaces default --include-resources couchbaseclusters.couchbase.com,couchbasebuckets.couchbase.com,persistentvolumes,persistentvolumeclaims,secrets,deployments,roles.rbac.authorization.k8s.io,rolebindings.rbac.authorization.k8s.io,serviceaccounts,configmaps -n kube-system

velero backup get -n kube-system

