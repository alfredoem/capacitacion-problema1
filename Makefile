include Makefile-task.mk

NAME_IMAGE=aespiritu/orbis-training-docker
DOCKER_TAG=3.0.0
DOCKER_IMAGE=${NAME_IMAGE}:${DOCKER_TAG}
NAME="Gerdard"

install:
	docker run -v ${PWD}/app:/app ${DOCKER_IMAGE} npm install

start:
	docker run -v ${PWD}/app:/app -p 1042:3030 -p 35729:35729 ${DOCKER_IMAGE} npm run start

release:
	docker run -v ${PWD}/app:/app ${DOCKER_IMAGE} npm run release

greet:
	@docker run -it -e "NAME=${NAME}" -v ${PWD}/app/:/app ${DOCKER_IMAGE} /app/resources/example.sh

resource:
	@echo 'Hola recursos!'