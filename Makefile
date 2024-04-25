# Variables
DOCKER_HOSTNAME := mydocker
DOCKER_IMAGE_TAG := dummy-app:2.0
DOCKER_CONTAINER_NAME := dummy-container
DOCKER_PORT := 1337
LISTEN_PORT := 80

build:
	docker image build --tag $(DOCKER_IMAGE_TAG) .

create:
	docker container create -h $(DOCKER_HOSTNAME) -p $(LISTEN_PORT):$(DOCKER_PORT) -e PORT=$(DOCKER_PORT) --name $(DOCKER_CONTAINER_NAME) $(DOCKER_IMAGE_TAG)

start:
	docker container start $(DOCKER_CONTAINER_NAME)

test:
	curl http://localhost

stop:
	docker container stop $(DOCKER_CONTAINER_NAME)

remove:
	docker container remove $(DOCKER_CONTAINER_NAME) -f

.PHONY: build create start test stop remove