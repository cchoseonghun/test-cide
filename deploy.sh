#!/bin/bash

DOCKER_APP_NAME=test-cicd
docker-compose -p ${DOCKER_APP_NAME} -f docker-compose.yml up -d