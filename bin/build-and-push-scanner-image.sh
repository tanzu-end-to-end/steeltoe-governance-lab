#!/usr/bin/env bash

REGISTRY=$(yq r $PARAMS_YAML common.harborDomain)
docker build -t  dotnet-sonarscanner docker/dotnet-sonarscanner
docker tag dotnet-sonarscanner:latest ${REGISTRY}/tools/dotnet-sonarscanner:latest
docker push ${REGISTRY}/tools/dotnet-sonarscanner:latest
