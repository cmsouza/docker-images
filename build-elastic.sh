#!/bin/bash
cd elastic
VERSION=0.0.1

docker build -t cmsouza/elasticsearch:${VERSION} .

#trigger remote build
#curl -H "Content-Type: application/json" --data '{"source_type": "Tag", "source_name": "0.0.1+elastic"}' -X POST https://registry.hub.docker.com/u/cmsouza/docker-images/trigger/{token}/
