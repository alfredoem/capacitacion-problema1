make build:
	docker build --tag ${DOCKER_IMAGE} .

make up:
	docker-compose up

make login:
	docker login -u aespiritu -p "thelove20++"

make push:
	@make login
	@docker push ${DOCKER_IMAGE}