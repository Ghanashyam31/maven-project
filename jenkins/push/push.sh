#!/bin/bash

IMAGE="maven-project"

echo "**********************************"
echo "Login to Docker Server"
echo "**********************************"

docker login -u shyam3105 -p$PASS

echo "**********************************"
echo "Adding tag to docker image ....   "
echo "**********************************"

docker tag $IMAGE:$BUILD_ID shyam3105/$IMAGE:$BUILD_ID

echo "***************************************"
echo " Pushing image on Docker Repository    "
echo "***************************************"

docker push shyam3105/$IMAGE:$BUILD_ID


