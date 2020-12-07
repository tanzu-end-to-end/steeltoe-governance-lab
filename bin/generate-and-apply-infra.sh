#!/usr/bin/env bash

ytt -f k8s/infra.yml -f secrets/lab.yml --ignore-unknown-comments | 
    kapp deploy -n tanzu-kapp -a steeltoe-services -f - -y

