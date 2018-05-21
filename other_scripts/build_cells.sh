#!/bin/bash

docker build -t cells ../

docker run -it -d --name database -p 3306:3306 -e MYSQL_ALLOW_EMPTY_PASSWORD=yes mariadb:latest

docker run -it -d --name cells -t -v /home/emma_watson/:/home/cells/.config/pydio/cells/ -e "CELLS_BIND=$ADDR:$PORT" -e "CELLS_EXTERNAL=$ADDR:$PORT" -p $PORT:$PORT cells
