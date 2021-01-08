#!/usr/bin/env bash

WORKLOAD_CLUSTER=$(yq r ${PARAMS_YAML} clusters.workload-cluster)

PREVIOUS_CONTEXT=$(kubectl config current-context)
kubectl config use-context "${WORKLOAD_CLUSTER}-admin@${WORKLOAD_CLUSTER}"
ytt -f k8s/infra.yml -f secrets/lab.yml --ignore-unknown-comments |
    kapp deploy -n tanzu-kapp -a steeltoe-services --into-ns musicstore -f - -y
kubectl config use-context ${PREVIOUS_CONTEXT}

