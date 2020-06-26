#!/bin/bash
export IMAGE=$(sed -n '1p' /tmp/.auth)
export BUILD_ID=$(sed -n '2p' /tmp/.auth)
export PASS=$(sed -n '3p' /tmp/.auth)

docker login -ushyam3105 -p$PASS

cd ~/maven && docker-compose up -d

docker run shyam3105/$IMAGE:$BUILD_ID

