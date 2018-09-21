Participantes:
Gerardo Sánchez
Alfredo Espiritu

Comando para construir una imagen y tagearla
docker tag node:10.11-slim aespiritu/orbis-training-docker:0.1.0

Comando para cambio de tag:
docker tag espiritu/orbis-training-docker:0.1.0 aespiritu/orbis-training-docker:0.2.0

Preguntas/Respuestas:
1. ¿Qué importancia tiene los tags en un proyecto?
	Sirven para poder identificar las diferentes versiones que se manejan dentro del proyecto.
2. ¿Cuál es la diferencia entre un tag normal y un tag anotado en git?
	Un tag anotado contiene un mensaje. mientras que los tags normales no.
3. ¿Cómo se sube todos los tags de git que hay en mi local?
	Se ejecuta el comando git push --tags
4. ¿Es necesario loguearse cada vez que subo una imagen a dockerhub?
	Solamente es necesario loguearse la primera vez.
5. ¿Qué es y para qué sirve docker?
	Es un contenedor de servicios que sirve para guardar y compartir la configuración de un proyecto.
6. ¿Cuál es la diferencia entre docker y VirtualBox?
	Virtual box es para virtualizar un sistema operativo y docker permite instanciar de manera individual cada servicio.
7. ¿Es necesario depender de una imagen de docker base al crear una imagen nueva?
	Si, siempre se recomienda crear una imagen en base a una existente, pero tambien se puede crear desde 0.
8. ¿Porqué debo anteponer el nombre de usuario en una imagen docker nueva?
	Se debe de anteponer para no tener problemas con el nombre del repositorio al subir la imágen.
9. ¿Que pasa si creo una imagen sin especificar una versión o tag, con qué versión se crea?
	Si creamos una imagen sin especificar el tag, se le asigna por default el tag: latest.
