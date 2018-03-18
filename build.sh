#!/bin/bash
set -e

echo "Get dependancies"
go get github.com/fsouza/go-dockerclient
echo "Build"
go build -o docker-socket-healthcheck
echo "Set executable"
chmod +x docker-socket-healthcheck
