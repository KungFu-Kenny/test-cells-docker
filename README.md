# test-cells-docker

* git clone
* docker build -t cells .
* then use the run command below 

`docker run -it -d --name cells -t -v /home/thabet/docker_volume/:/home/cells/.config/pydio/cells/ -e "CELLS_BIND=172.16.28.68:8080" -e "CELLS_EXTERNAL=172.16.28.68:8080" -p 8080:8080 cells`

use this command to run, make sure to change the addresses and ports to yours.


