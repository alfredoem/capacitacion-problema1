# Ejercicio 1
Capacitación: Git, bash y docker
Integrantes:
- Alfredo Espiritu Monago
- Gerardo Sanchez Calderon

---

¿Qué importancia tiene los tags en un proyecto?
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

10. ¿Porqué es necesario crear un contenedor con esta bandera -it ? ¿Qué pasa si no le pongo -it?
	Es ncesario crear el contenedor con la bandera -it para oder acceder a la consola de nusro contenedor. Si no creamos con -it no podremos iteractuar
	con nuestro container.
11. ¿Para qué sirve ejecutar el comando bash al ejecutar una imagen?
	Sirve para que nos ubique en el terminal dentro del container.

12. ¿Cuál es la diferencia entre docker ps y docker ps -a?
	Un docker ps lista solamente los containers que se encuentran encendidos, mientras que docker ps -a lista todos los containers así no se encuentren encendidos.

13. Comando para ejecutar el contenedor:
	docker run aespiritu/orbis-training-docker:0.2.0  

---

PARTE 5

1. ¿Cuál es la diferencia entre una imagen y un contenedor?
	La imagen es como una clase base y el contenedor es como una instancia de la imagen.
2. ¿Cómo listo las imágenes que hay en mi computadora?
	Con el comando docker images
3. ¿Cómo salgo de un contenedor de docker?
	con el comando "exit"
4. ¿Se elimina el contenedor al salir de ella?
	No se elimina el contenedor, solamente se apaga.
5. ¿Cómo elimino un contenedor?
	con el comando docker kill
6. ¿Para qué es necesario el flag `-i`, `-t`, `--rm`?
	el flag -i te permite iteractuar con el contenedor y el flag -t te muestra información del terminal, el flag --rm te permite eliminar el contenedor cuando 		escapas del mismo.
7. ¿Cómo verifico que el archivo creado se encuentra en la imagen?
	Se puede verificar ejecutando el comando: docker run aespiritu/orbis-training-docker:0.2.0 ls
8. ¿Cómo se comenta una linea de código en Dockerfile?
	Agregando un "#" al inicio de la línea

---

PARTE 6

1. ¿Qué es NGINX?
	Es un servidor que te permite mostrar contenido en web
2. ¿Cómo expongo puertos en docker?
	Con la opción -p puerto_container:puerto_host
3. ¿Cómo especifico los puertos al levantar un contenedor (docker run)?
	con docker run -p puerto_contenedor:puerto_host
4. ¿Cómo hago 'forward' al levantar un contenedor (docker run)?
	Se trata del mismo comando para enlazar un puerto interno del contenedor con el puerto del host

---
	
PARTE 7

¿Qué pasa si no especifico el directorio de trabajo?
	No encuentra el archivo package.json
	
¿Porqué el puerto 3030?
    Es el puerto donde se muestra el html generado

¿Porqué el puerto 35729?
    Es el puerto que verifica cambios y genera otra vez el html
    
Comando
`docker run -p 3030:3030 -p 35729:35729 aespiritu/orbis-training-docker:3.0.0 npm run start`

12. Preguntas 

1. ¿Es necesario especificar el `workdir` en docker?, ¿Porqué?
    Es para indicar desde que ubicación se van a ejecutar los comandos
2. ¿Que hacen los siguientes comandos? 
 -`docker ps`
    Lista los containers activos
 -`docker pull`
    Descargar cambios de la imagen
 -`docker push` 
    Subir cambios de la imagen al repositorio remoto
 -`docker rm`
    Eliminar un container
 -`docker rmi`
    Eliminar una imagen
 -`docker run`
    Levantar un nuevo container
 -`docker tag`
    Etiquetar una imagen
 -`docker search`
    Permite buscar imagenes del dockerhub
 -`docker login`
    Inicia sesión en dockerhub
 -`docker exec`
    Ejecuta un comando dentro del container
 -`docker build`
    Contruye una imagen
 -`docker inspect`
    Lista caracteristicas de un container
 -`docker network`
    Permite administrar las redes
    
6. 
1. ¿Qué es bash? ¿Qué significa?
    son archivos ejecutables, que se pueden ejecutar como comandos del SO
2. ¿Cómo ejecuto un archivo bash?
    Invocandolo con su nombre
3. ¿Qué pasa si no especifico en un `.sh`, la linea `#!/bin/bash`?
    Sirve para indicar en que ubicación esta el interprete de bash
4. ¿Se puede cambiar el modo bash (`/bin/bash`) a otro tipo de ejecución?
    Si, indicandole la ruta donde esta el interprete
5. ¿Cómo se envía variables de entorno por Docker CLI y docker-compose?
    Se envia mediante la opción -e
    Se envia mediante la opción -e