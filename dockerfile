FROM ubuntu:latest

RUN apt -y update
RUN apt -y install sudo wget  

RUN adduser cells --disabled-password --gecos GECOS
RUN echo "cells ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

RUN sudo apt -y install supervisor

COPY commands.conf /etc/supervisor/conf.d/cmd.conf
COPY cmd.sh /home/cells/cmd.sh
COPY cells /home/cells/cells

WORKDIR /home/cells

RUN sudo chmod +x /home/cells/cells
RUN sudo chmod +x /home/cells/cmd.sh
RUN sudo chown cells:cells -R /home/cells/


ENV CELLS_BIND localhost:8080
ENV CELLS_EXTERNAL localhost:8080

VOLUME [ "/home/cells/.config/pydio/cells/" ]
VOLUME [ "/root/.config/pydio/cells/" ]

CMD ["supervisord", "-n"]
