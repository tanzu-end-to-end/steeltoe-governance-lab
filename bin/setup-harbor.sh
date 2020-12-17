#!/usr/bin/env bash

REGISTRY=$(yq r $PARAMS_YAML common.harborDomain)
curl --user "admin:${HARBOR_PASSWORD}" -X POST https://${REGISTRY}/api/v2.0/projects -H "Content-type: application/json" --data @harbor/project/steeltoe.json
curl --user "admin:${HARBOR_PASSWORD}" -X POST https://${REGISTRY}/api/v2.0/projects -H "Content-type: application/json" --data @harbor/project/musicstore.json
curl --user "admin:${HARBOR_PASSWORD}" -X POST https://${REGISTRY}/api/v2.0/projects -H "Content-type: application/json" --data @harbor/project/sqlserver.json
curl --user "admin:${HARBOR_PASSWORD}" -X POST https://${REGISTRY}/api/v2.0/registries -H "Content-type: application/json" --data @harbor/registry/mcr.json
curl --user "admin:${HARBOR_PASSWORD}" -X POST https://${REGISTRY}/api/v2.0/registries -H "Content-type: application/json" --data @harbor/registry/hub.json
curl --user "admin:${HARBOR_PASSWORD}" -X POST https://${REGISTRY}/api/v2.0/replication/policies -H "Content-type: application/json" --data @harbor/replication/sqlserver.json
curl --user "admin:${HARBOR_PASSWORD}" -X POST https://${REGISTRY}/api/v2.0/replication/policies -H "Content-type: application/json" --data @harbor/replication/sqltools.json
curl --user "admin:${HARBOR_PASSWORD}" -X POST https://${REGISTRY}/api/v2.0/replication/policies -H "Content-type: application/json" --data @harbor/replication/eurekaserver.json
curl --user "admin:${HARBOR_PASSWORD}" -X POST https://${REGISTRY}/api/v2.0/replication/policies -H "Content-type: application/json" --data @harbor/replication/hystrix.json
curl --user "admin:${HARBOR_PASSWORD}" -X POST https://${REGISTRY}/api/v2.0/replication/policies -H "Content-type: application/json" --data @harbor/replication/configserver.json
