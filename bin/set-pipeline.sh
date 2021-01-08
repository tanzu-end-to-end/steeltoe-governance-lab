#!/usr/bin/env bash

set -e

fly -t $(yq r $PARAMS_YAML common.team) set-pipeline --pipeline musicstore --config concourse/pipeline/musicstore/pipeline.yml -n
fly -t $(yq r $PARAMS_YAML common.team) unpause-pipeline --pipeline musicstore 

