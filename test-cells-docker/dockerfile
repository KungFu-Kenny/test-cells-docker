FROM ubuntu

RUN apt -y update
RUN apt -y install sudo

RUN adduser cells --disabled-password --gecos GECOS
RUN echo "cells ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

RUN sudo apt -y install php-cli php-fpm php-intl php-gd php-dom php-curl supervisor

ADD commands.conf /etc/supervisor/conf.d/cmd.conf
ADD cmd.sh /home/cells/cmd.sh
ADD cells /home/cells/cells

RUN sudo chmod +x /home/cells/cmd.sh
RUN sudo chown cells:cells -R /home/cells/

CMD ["supervisord", "-n"]
