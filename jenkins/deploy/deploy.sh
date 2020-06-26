#!/bin/bash


echo "$IMAGE" > /tmp/.auth
echo "$BUILD_ID" >> /tmp/.auth
echo "$PASS" >> /tmp/.auth

scp /tmp/.auth produser@jenkin-prod:/tmp/.auth
scp jenkin/deploy/publish.sh produser@jenkin-prod:/tmp/publish.sh

ssh produser@jenkin-prod "/tmp/publish.sh"
