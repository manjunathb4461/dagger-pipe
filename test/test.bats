#!/usr/bin/env bats

setup() {
  DOCKER_IMAGE=${DOCKER_IMAGE:="test/demo-pipe-bash"}

  echo "Building image..."
  docker build -t ${DOCKER_IMAGE}:test .
}

@test "Test 'dagger version' command" {
    docker run \
        -e CMD="version" \
        -v $(pwd):$(pwd) \
        -w $(pwd) \
        ${DOCKER_IMAGE}:test

    [ "$?" -eq 0 ]
}

