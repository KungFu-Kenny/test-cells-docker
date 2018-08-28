#!/bin/bash
docker stop database
docker rm database
docker run -it -d --name database -p 3306:3306 -e MYSQL_ROOT_PASSWORD=root mariadb:latest
docker ps