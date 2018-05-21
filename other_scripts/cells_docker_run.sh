#!/bin/bash

docker run -it -d --name cells -t -v /home/tmp/test/:/home/cells/.config/pydio/cells/ -e "CELLS_BIND=$1:$2" -e "CELLS_EXTERNAL=$1:$2" -p $2:$2 cells
