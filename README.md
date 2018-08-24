# cells-docker

Current cells version : 1.0.0 ( for updates change the ENV CELLS_VERSION ...., and rebuild the image )

* `git clone https://github.com/KungFu-Kenny/test-cells-docker.git`
* `docker build -t cells .`
* then run the commands below

`docker run -it -d --name cells -t -v <your-local-folder-path>:/home/cells/.config/pydio/cells/ -e "CELLS_BIND=<your-servers-ip>:8080" -e "CELLS_EXTERNAL=<your-servers-ip>:8080" -p 8080:8080 cells`

use this command to run, make sure to change the addresses and ports matching yours.


