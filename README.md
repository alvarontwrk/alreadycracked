# alreadycracked
![GitHub](https://img.shields.io/github/license/AlvaroGarciaJaen/alreadycracked)
[![Build Status](https://travis-ci.com/AlvaroGarciaJaen/alreadycracked.svg?branch=master)](https://travis-ci.com/AlvaroGarciaJaen/alreadycracked)
[![CircleCI](https://circleci.com/gh/AlvaroGarciaJaen/alreadycracked.svg?style=svg)](https://circleci.com/gh/AlvaroGarciaJaen/alreadycracked)

## Descripción
Microservicio escrito en Ruby que recoge hashes de diferentes
algoritmos (MD5, SHA1...) junto con su correspondiente en texto plano. Se podrá
tanto consultar un hash para obtener el texto plano, como añadir aquellas
correspondencias que no se encuentren. De esta manera se pretende que poco a
poco el conjunto de datos vaya creciendo.

Para hacer uso de este microservicio, se implementará un API REST también como
parte de este proyecto. Se espera así que cualquiera pueda desarrollar de manera
fácil y cómoda cualquier tipo de interfaz a partir de este trabajo.

## Instalación
-   Instalar las gemas:
```bash
rake install
```

## Uso
Para hacer uso del servicio web, podemos hacerlo de dos maneras:

### Directamente desde nuestro Linux
-   Iniciar el gestor de tareas (esto inicia el servicio directamente):
```bash
rake init
```

-   Iniciar el servicio web (si el gestor de tareas ya esta activo):
```bash
rake start
```

-   Parar el servicio web:
```bash
rake stop
```

### Contenedor Docker
```
DockerHub: https://hub.docker.com/r/alvaronetwork/alreadycracked
```

-   Para iniciar el contenedor de Docker:
```bash
docker run --rm -t -p 9292:80 alvaronetwork/alreadycracked
```

-   Cuando se inicia el servidor, por defecto escucha en el puerto 9292. Puede
consultarse la funcionalidad básica de la siguiente manera:
```bash
curl http://localhost:9292
```

Para más información, consultar la [documentación
adicional](https://alvaro.network/alreadycracked/#api-rest).

## Tests
-   Ejecutar todos los tests:
```bash
rake test
```

## Despliegue PaaS con Docker
-   Actualmente se encuentra desplegado en el PaaS de Azure y Heroku
```
Despliegue: https://alreadycracked.azurewebsites.net/
```
```
Contenedor: https://alreadycracked.herokuapp.com/
Contenedor: https://alreadycracked.azurewebsites.net/
```

-   Para desplegarse en Azure:
```bash
rake deploy_az
```

-   Para deshacer el despliegue:
```bash
rake purge_az
```

-   Para desplegarse en Heroku:
```bash
rake deploy_heroku
```

-   Para deshacer el despliegue:
```bash
rake purge_heroku
```

## Creación de VM y aprovisionamiento
El playbook de Ansible podemos encontrarlo aquí:
```
provision: provision/playbook.yml
```

Además, la imagen del SO se encuentra pública aquí:
```
https://app.vagrantup.com/alvaronetwork/boxes/alreadycracked
```

## Documentación adicional
Como herramienta de construcción, se hace uso de:
```
buildtool: Rakefile
```

-   [Descripción](https://alvaro.network/alreadycracked/#descripción)
-   [Motivación](https://alvaro.network/alreadycracked/#motivación)
-   [Funcionalidad](https://alvaro.network/alreadycracked/#funcionalidad)
-   [Implementación](https://alvaro.network/alreadycracked/#implementación)
-   [Herramienta de construcción](https://alvaro.network/alreadycracked/#herramienta-de-construcción)
-   [Integración continua](https://alvaro.network/alreadycracked/#integración-continua)
-   [API REST](https://alvaro.network/alreadycracked/#api-rest)
-   [Despliegue PaaS con Docker](https://alvaro.network/alreadycracked/#despliegue-paas-con-docker)
-   [Creación de VM y aprovisionamiento](https://alvaro.network/alreadycracked/#creación-de-vm-y-aprovisionamiento)
