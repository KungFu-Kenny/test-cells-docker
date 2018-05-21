#!/bin/bash

docker run -it -d --name database -p 3306:3306 -e MYSQL_ALLOW_EMPTY_PASSWORD=yes mariadb:latest
