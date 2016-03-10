#!/usr/bin/env sh

CENTOS_VERSION=7

cd build-7/

docker build -t aguamala/centos-systemd:${CENTOS_VERSION} .

DESTINATION=aguamala/centos-systemd:${CENTOS_VERSION}
LATEST_DESTINATION=aguamala/centos-systemd:latest

docker tag aguamala/centos-systemd:${CENTOS_VERSION} ${DESTINATION}
docker push ${DESTINATION}
docker tag -f aguamala/centos-systemd:${CENTOS_VERSION} ${LATEST_DESTINATION}
docker push ${LATEST_DESTINATION}
