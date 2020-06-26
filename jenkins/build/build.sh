#!/bin/bash

echo "****************************************"
echo "********* BUILDING THE IMAGE ***********"
echo "****************************************"

#/home/jenkins/jenkins-data/jenkin_docker/jenkin/build

cp -f java-app/target/*.jar jenkins/build/

cd jenkins/build/ &&  docker-compose -f Docker-compose-build.yml build --no-cache

