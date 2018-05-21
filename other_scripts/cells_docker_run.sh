#!/bin/bash

docker run -it -d --name cells -t -v /home/thabet/emmawatson/:/home/cells/.config/pydio/cells/ -e "CELLS_BIND=192.168.0.125:8080" -e "CELLS_EXTERNAL=192.168.0.125:8080" -p 8080:8080 cells
