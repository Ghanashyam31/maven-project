#!/bin/bash

echo "************************************************************"
echo "    --------  TESTING THE JAR FILE  -------------          "
echo "************************************************************"

WORKSPACE='/home/jenkin/jenkins-data/jenkins_home/workspace/final-pipeline'

docker run --rm -v $PWD/java-app:/app -v /root/.m2/:/root/.m2/ -w /app maven:3-alpine "$@"

