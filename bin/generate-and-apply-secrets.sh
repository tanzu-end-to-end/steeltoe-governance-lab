#!/usr/bin/env bash

TEAM=$(yq r ${PARAMS_YAML} common.team)
ytt -f concourse/secrets -f secrets/lab.yml --ignore-unknown-comments | 
    kapp deploy -n tanzu-kapp -a ${TEAM}-secrets -f - -y

