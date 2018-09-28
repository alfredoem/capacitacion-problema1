Participantes:
Gerardo Sánchez
Alfredo Espiritu

Comando para construir una imagen y tagearla
docker tag node:10.11-slim aespiritu/orbis-training-docker:0.1.0

Comando para cambio de tag:
docker tag espiritu/orbis-training-docker:0.1.0 aespiritu/orbis-training-docker:0.2.0

Comando para exponer el puerto 1080 dsde el puerto 80 del contenedor:
	docker run -p 1080:80 aespiritu/orbis-training-docker:2.0.0

Comando para levantar el contenedor con doker-compose:
	docker-compose up
