FROM ubuntu:latest
ENV CELLS_VERSION 1.0.0

RUN apt -y update
RUN apt -y install sudo wget  

RUN adduser cells --disabled-password --gecos GECOS
RUN echo "cells ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

RUN sudo apt -y install php-cli php-fpm php-intl php-gd php-dom php-curl supervisor

ADD commands.conf /etc/supervisor/conf.d/cmd.conf
ADD cmd.sh /home/cells/cmd.sh

WORKDIR /home/cells

RUN wget "https://download.pydio.com/pub/cells/release/${CELLS_VERSION}/linux-amd64/cells"

RUN sudo chmod +x /home/cells/cells
RUN sudo chmod +x /home/cells/cmd.sh
RUN sudo chown cells:cells -R /home/cells/


ENV CELLS_BIND localhost:8080
ENV CELLS_EXTERNAL localhost:8080

VOLUME [ "/home/cells/.config/pydio/cells/" ]
VOLUME [ "/root/.config/pydio/cells/" ]

CMD ["supervisord", "-n"]
