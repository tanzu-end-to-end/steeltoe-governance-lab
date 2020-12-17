#!/usr/bin/env bash

REGISTRY=$(yq r $PARAMS_YAML common.harborDomain)
WORKLOAD_CLUSTER=$(yq r ${PARAMS_YAML} clusters.workload-cluster)

PREVIOUS_CONTEXT=$(kubectl config current-context)

IMAGE_ARG="--acme-http01-solver-image=${REGISTRY}/cert-manager/cert-manager-acmesolver:canary"
PATCH=$(jq -n --arg flag "${IMAGE_ARG}" '[{"op": "add", "path": "/spec/template/spec/containers/0/args/-", "value": $flag}]')

kubectl config use-context ${WORKLOAD_CLUSTER}-admin@${WORKLOAD_CLUSTER}
kubectl patch -n cert-manager deployment cert-manager --type json -p "${PATCH}"
kubectl config use-context ${PREVIOUS_CONTEXT}
