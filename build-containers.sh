#!/bin/bash
kubectl config use-context docker-desktop

docker build -f ./users-api/Dockerfile -t users-api:latest .
docker build -f ./api/Dockerfile -t orders-api:latest .

docker build -f ./api/MigrationsDockerfile -t orders-migrations:latest .

docker build -f ./load/Dockerfile -t load:latest .