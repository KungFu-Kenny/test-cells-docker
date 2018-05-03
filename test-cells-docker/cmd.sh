#!/bin/bash

bootstrapjson=~/.config/pydio/cells/static/pydio/data/plugins/boot.conf/bootstrap.json
addr=$ADDR
port=$PORT


sudo service php7.2-fpm start
sudo service php7.2-fpm status

sudo service mysql start
sudo service mysql status

sudo touch /home/testsupervisor.test

sudo sed -i -e "s/listen.owner\s*=\s*www-data/listen.owner = cells/g" /etc/php/7.2/fpm/pool.d/www.conf
sudo sed -i -e "s/listen.group\s*=\s*www-data/listen.group = cells/g" /etc/php/7.2/fpm/pool.d/www.conf

sudo service php7.2-fpm restart

sudo mysql -u root -proot -e "create user 'cells'@'localhost' identified by 'cells';"
sudo mysql -u root -proot -e "grant all privileges on * . * to 'cells'@'localhost';"


sed -i -e "s|http://192.168.0.195:8080/a|http://$addr:$port/a|g" $bootstrapjson

sed -i -e "s|http://192.168.0.195:8080/plug|http://$addr:$port/plug|g" $bootstrapjson

sed -i -e "s|http://192.168.0.195:8080/io|http://$addr:$port/io|g" $bootstrapjson

sed -i -e "s|http://192.168.0.195:8080/ws|http://$addr:$port/ws|g" $bootstrapjson

sed -i -e "s|http://192.168.0.195:8080/auth|http://$addr:$port/auth|g" $bootstrapjson

sed -i -e "s|http://192.168.0.195:8080|http://$addr:$port|g" $bootstrapjson
