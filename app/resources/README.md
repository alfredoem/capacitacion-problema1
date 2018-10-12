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
	
Comando para instalar dependencias npm
    docker run -it --workdir=/resources aespiritu/orbis-training-docker:3.0.0 npm install

PARTE 07

9.

Visualizar la web
Puerto: 1042

10.

Pasos para generar un nuevo release
- levantar el container
- ingresar al bash del container
- ejecutar comando npm para generar nuevo release

PARTE 08

Comando para ejecutar curl desde un container

`docker run --network="orbis-training-project_default" node:10.10.0-slim curl remarker_app:3030`

Comando para ejecutar archivo BASH

`docker run -e "NAME=Aloha" -v $PWD/resources:/resources aespiritu/orbis-training-docker:3.0.0 /resources/example.sh`

Comando para pasar pariable de entorno al container
`docker run -e "NAME=Aloha" -it --entrypoint /resources/example.sh  aespiritu/orbis-training-docker:3.0.0`

¿Qué sucede si le quito el @?
    Se muestra el comando ejecutado
    
PASO 9

1. ¿Para qué sirve el archivo `Makefile`?
    Para crear comandos make que permitan ejecutar comando mas complejos
2. ¿Qué es un `target` en `Makefile`?
    Es el nombre que se le da aun comando en makefile