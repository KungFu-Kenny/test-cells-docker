#!/bin/bash

docker run -it -d --name cells -t -v /home/tmp/test/:/home/cells/.config/pydio/cells/ -e "CELLS_BIND=$ADDR:$PORT" -e "CELLS_EXTERNAL=$ADDR:$PORT" -p $PORT:$PORT cells
