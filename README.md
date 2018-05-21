# cells-docker

Current cells version : 1.0.0 ( for updates change the ENV CELLS_VERSION ...., and rebuild the image )

* `git clone https://github.com/KungFu-Kenny/test-cells-docker.git`
* `docker build -t cells .`
* then run the command below 

`docker run -it -d --name cells -t -v /home/emma_watson/:/home/cells/.config/pydio/cells/ -e "CELLS_BIND=172.16.28.68:8080" -e "CELLS_EXTERNAL=172.16.28.68:8080" -p 8080:8080 cells`

use this command to run, make sure to change the addresses and ports matching yours.


