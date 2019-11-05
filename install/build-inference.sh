#!/bin/bash
#set -x

IMAGE_REPOSITORY=${INFERENCE_IMAGE_REPOSITORY:-quay.io/cfchase/scavenger-inference:latest}
SOURCE_REPOSITORY_URL=${SOURCE_REPOSITORY_URL:-https://github.com/cfchase/scavenger.git}
SOURCE_REPOSITORY_REF=${SOURCE_REPOSITORY_REF:-master}

echo "Building ${SERVER_IMAGE_REPOSITORY} from ${SOURCE_REPOSITORY_URL} on ${SOURCE_REPOSITORY_REF}"

s2i build ${SOURCE_REPOSITORY_URL} --ref ${SOURCE_REPOSITORY_REF} --context-dir /inference docker.io/centos/python-36-centos7:latest ${IMAGE_REPOSITORY}