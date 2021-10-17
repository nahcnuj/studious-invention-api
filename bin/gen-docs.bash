#!/usr/bin/env bash

OPENAPI_SCHEMA_FILE=$1
WORKDIR_IN_DOCKER=/local
OUTPUT_DIR=${2#${WORKDIR_IN_DOCKER}/}

docker run --rm -v "${PWD}:${WORKDIR_IN_DOCKER}" -u `id -u`:`id -g` -w ${WORKDIR_IN_DOCKER} openapitools/openapi-generator-cli generate \
    -i ${OPENAPI_SCHEMA_FILE} \
    -g html \
    -o ${WORKDIR_IN_DOCKER}/${OUTPUT_DIR}
