
# FROM Instruction
docker build -t aldisypu/from from

docker image ls

# RUN Instruction
docker build -t aldisypu/run run

docker build -t aldisypu/run run --progress=plain --no-cache

# CMD Instruction
docker build -t aldisypu/command command

docker image inspect aldisypu/command

docker container create --name command aldisypu/command

docker container start command

docker container logs command

# LABEL Instruction
docker build -t aldisypu/label label

docker image inspect aldisypu/label

# ADD Instruction
docker build -t aldisypu/add add

docker container create --name add aldisypu/add

docker container start add

docker container logs add

# COPY Instruction
docker build -t aldisypu/copy copy

docker container create --name copy aldisypu/copy

docker container start copy

docker container logs copy

# .dockerignore
docker build -t aldisypu/ignore ignore

docker container create --name ignore aldisypu/ignore

docker container start ignore

docker container logs ignore

# EXPOSE Instruction
docker build -t aldisypu/expose expose

docker image inspect aldisypu/expose

docker container create --name expose -p 8080:8080 aldisypu/expose

docker container start expose

docker container ls

docker container stop expose

# ENV Instruction
docker build -t aldisypu/env env

docker image inspect aldisypu/env

docker container create --name env --env APP_PORT=9090 -p 9090:9090 aldisypu/env

docker container start env

docker container ls

docker container logs env

docker container stop env

# VOLUME Instruction
docker build -t aldisypu/volume volume

docker image inspect aldisypu/volume

docker container create --name volume -p 8080:8080 aldisypu/volume

docker container start volume

docker container logs volume

docker container inspect volume

#15a53c9a60b9aaddb3c294cde03e6f283f319acf0db3e40c5d4b4a992a6451f1

docker volume ls

# WORKDIR Instruction
docker build -t aldisypu/workdir workdir

docker container create --name workdir -p 8080:8080 aldisypu/workdir

docker container start workdir

docker container exec -i -t workdir /bin/sh

# USER Instruction
docker build -t aldisypu/user user

docker container create --name user -p 8080:8080 aldisypu/user

docker container start user

docker container exec -i -t user /bin/sh

# ARG Instruction
docker build -t aldisypu/arg arg --build-arg app=pzn

docker container create --name arg -p 8080:8080 aldisypu/arg

docker container start arg

docker container exec -i -t arg /bin/sh

# HEALTHCHECK Instruction
docker build -t aldisypu/health health

docker container create --name health -p 8080:8080 aldisypu/health

docker container start health

docker container ls

docker container inspect health

# ENTRYPOINT Instruction
docker build -t aldisypu/entrypoint entrypoint

docker image inspect aldisypu/entrypoint

docker container create --name entrypoint -p 8080:8080 aldisypu/entrypoint

docker container start entrypoint

# Multi Stage Build
docker build -t aldisypu/multi multi

docker image ls

docker container create --name multi -p 8080:8080 aldisypu/multi

docker container start multi

# Docker Push
docker tag aldisypu/multi registry.digitalocean.com/aldisypu/multi

docker --config /Users/aldisypu/.docker-digital-ocean/ push registry.digitalocean.com/aldisypu/multi

docker --config /Users/aldisypu/.docker-digital-ocean/ pull registry.digitalocean.com/aldisypu/multi