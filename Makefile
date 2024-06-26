# Makefile

# Variables
DOCKER_IMAGE = portone-assaignment
DOCKER_TAG = latest
DOCKER_CONTAINER = portone-assaignment

# Targets
.PHONY: build run stop

build:
    docker build -t $(DOCKER_IMAGE):$(DOCKER_TAG) .

run:
    docker run -p 8080:8080 --env-file .env --name $(DOCKER_CONTAINER) $(DOCKER_IMAGE):$(DOCKER_TAG)

stop:
    docker stop $(DOCKER_CONTAINER)
    docker rm $(DOCKER_CONTAINER)
