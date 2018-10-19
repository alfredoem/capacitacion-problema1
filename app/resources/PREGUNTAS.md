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

---

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

---

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
   

---


PARTE 10

PREGUNTAS:

¿Qué significa el comando -d?

    Indica condicional sobre un directorio

¿Porqué la sentencia comienza con @?

    Para no mostrar el comando en la salida de la ejecución
¿Para qué sirve el comando mkdir?

    crea un directorio
    
Explicar lo que hace la función mkdir_deploy_dir
    
    Verifica si un directorio no existe y lo crea
    

---

PREGUNTAS:
¿Para qué sirve el uso de \?
    
    Para dividir la sentencia en varias lineas
    
¿Para qué sirve el uso de &&?

    Condicional y
    
¿Qué función cumple usar los argumentos -rf?
   
   Realizar el comando recursivamente y forzado
    
    
Explicar lo que hace la función git_init (linea por linea)
    
    Se mueve al directorio, luego elimina recursivamente todos los archivos .git y finalmente
    incializa git en el directorio

---

PREGUNTAS:
¿Para qué sirve el uso de eval?
    
    Ejecuta un comando y guarda la salida en la variable
    
¿Para qué sirve el uso de shell?
    
    Permite interpretar los comandos bash
¿Para qué sirve el uso de git log --pretty=format:"%an"?
    
    Lista el log y muestra solo el nombre del autor de los commits

¿Cuál es la diferencia en usar git config y git config --global?

    Uno guarda configuracion por todos los proyectos y sin --global guarda individualemte
    
Explicar lo que hace la función git_config (línea por línea)
    
    Captura el nombre del usuario, email, luego ingresa al directorio de la rama para el deploy, y finalmente configura los datos obtenidos en la configuracion git local

---

PREGUNTAS:

¿Para qué sirve el uso de awk?
    Es un lenguaje para tratamiendo de datos en texto, permite obtener la segunda columna de la salida
    
¿Para qué sirve el uso de sed?
    Permite modificar textos

    
¿Para qué sirve el uso de git log --pretty=format:"%an"?
    
    Lista el log y muestra solo el nombre del autor de los commits
    
Explicar lo que hace la función git_add_remote_repository

    Asigna el nombre repositorio remoto a una variable, luego le agrega el token al nombre del repositorio, 
    ingresa al directorio del deploy y finalmente asigna el nuevo repositorio remoto
    
---

PREGUNTAS:

Explicar lo que hace la función create_branch_gh_pages
    
    Ingresa al directorio del deploy y luego crea una rama    
    
define copy_files_to_deploy
    @cp -r $(PWD)/$(DEPLOY_DIR)/$(BUILD_DIR)/* $(GIT_BRANCH_DIR)
endef

PREGUNTAS:

Explicar lo que hace la función copy_files_to_deploy
    
    Copia el contenido del build generado al directorio de la rama para el deploy
    

---

PREGUNTAS:

Explicar lo que hace la función git_add
    
    ingresa al directorio de la rama para el deploy, luego agrega todos los archivos al stash
    y muestra el estatus de la rama
    

PREGUNTAS:

Explicar lo que hace la función create_commit (línea por línea)
    
    Asigna el último subject a una variable, luego ingresa al directorio para el deploy y finalmente crea un commit con el mensaje
    
---

PREGUNTAS:

Explicar lo que hace la función git_push (línea por línea)
    
    Ingresa al directorio del deploy y realiza un push forzado
    
 
PREGUNTAS:

Explicar lo que hace la función clean_workspace
    
    Elimina el directorio del deploy forzadamente
    

---


PREGUNTAS:

¿Para qué sirve el uso de ifeq?

    Compara valores
    
¿Para qué sirve el uso de strip?

    Elimina espacios y reduce espacios duplicados

Explicar lo que hace la función show_deploy_url (línea por línea)

    Verifica si el diectorio existe, luego obtiene el nombre del usuario, el nombre del repositorio y finalmente muestra la url del repositorio para el deploy

    
---

PREGUNTAS:

¿Qué hace cada paso?

    1. Crear el directorio del deploy
    2. inicializa el repositorio
    3. Configura los configs del repositorio
    4. Agregar el repositorio remoto para el deploy
    5. Crea la rama para el deploy
    6. Copia los archivos al directorio del deploy
    7. Agrega los archivos al stage
    8. Realiza un commit
    9. Sube los cambios a la rama remota
    10. Elimina el directorio del deploy
    11. Muestra la url del deploy
   

---

PREGUNTAS:

¿Que sucede si no volumeo el docker.sock?

    El container no se podra comunicar con el daemon de docker local
    
¿Para que sirve el volumen var/jenkins_home?

    para que las configuraciones generadas en el container puedan ser leidas por el daemon local
    
¿Puedo cambiar de puerto?

    Si
¿Que pasa si no utlizo el usuario root?
    
    Se limitaran los permisos del jenkins
    
¿Còmo instalo make en una imagen?
    
    descargandolo con el manejador de paquetes de la imagen


PREGUNTAS:

¿Se puede crear un volúmen desde otro volúmen en docker? ¿Porqué?
    
    No se puede, 
    
¿Para que sirve el comando docker create -v <dir> --name <container> <image>?
    
    Crea un image con el volumen de otra imagen

¿Qué hace el comando docker cp ./ <container>:<dir>?

    Copia un directorio de otro container
    
¿Cómo creo una network usando docker run?
    
    docker network create <n_name>
    docker run --network <n_nombre>
    
¿Cómo conecto una network a un container? usando docker run
    
    docker run --network <n_nombre>
    
¿Qué hace docker run -it --rm --volumes-from <container> -w <dir> <image> <command>?
    
    Crea un container con el volumen de otro container y adicionalmente setea el directorio de inicio y finalmente ejecuta un comando