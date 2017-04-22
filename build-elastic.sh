#!/bin/bash
cd elastic
VERSION=0.0.1

docker build -t cmsouza/elasticsearch:${VERSION} .
