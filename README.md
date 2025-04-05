# tecgurus-devops-mar25
Repositorio para curso "DevOps desde Cero" Marzo 2025


## DOCKER


### Directivas DOCKERFILE

* FROM
* RUN
* CMD


### Docker CLI

```
# construccion de una imagen
...$ docker build --file <Dockerfile_path> --tag <repositorio>/<projecto>:<version> .
```

```
# lanzar un contenedor
...$ docker run --name <container_name> <docker_imager> 
...$ docker run -it --name <container_name> <docker_imager> 
```

```
# listar imagenes disponibles
...$ docker images 

# listar los contenedores lanzados
...$ docker ps
...$ docker ps --all

# inicia un contenedor ya creado
...$ docker start

# detiene un contenedor en ejecución
...$ docker stop

# envia un comando para ser ejecutado por un contenedor
...$ docker exec -it <container_name> <command>

```
