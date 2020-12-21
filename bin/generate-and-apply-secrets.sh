#!/usr/bin/env bash

SERVICES_CLUSTER=$(yq r ${PARAMS_YAML} clusters.shared-services-cluster)

TEAM=$(yq r ${PARAMS_YAML} common.team)
PREVIOUS_CONTEXT=$(kubectl config current-context)
kubectl config use-context "${SERVICES_CLUSTER}-admin@${SERVICES_CLUSTER}"
ytt -f concourse/secrets -f secrets/lab.yml --ignore-unknown-comments | 
    kapp deploy -n tanzu-kapp -a ${TEAM}-secrets --into-ns concourse-${TEAM} -f - -y
kubectl config use-context ${PREVIOUS_CONTEXT}

