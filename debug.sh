#!/bin/bash

docker run --rm -ti \
    --name go \
    -e DOCKER_HOST=unix:///tmp/docker.sock \
    -w /app \
    -v `pwd`:/app/ \
    -v /var/run/docker.sock:/tmp/docker.sock:ro \
    golang bash