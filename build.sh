#!/usr/bin/env sh

cd build-7/

docker build -t aguamala/centos-systemd:7-${BUILD_NUMBER} .

DESTINATION=aguamala/centos-systemd:7-${BUILD_NUMBER}
LATEST_DESTINATION=aguamala/centos-systemd:7

docker tag aguamala/centos-systemd:7-${BUILD_NUMBER} ${DESTINATION}
docker push ${DESTINATION}
docker tag -f aguamala/centos-systemd:7-${BUILD_NUMBER} ${LATEST_DESTINATION}
docker push ${LATEST_DESTINATION}
