#!/bin/bash

bootstrapjson=~/.config/pydio/cells/static/pydio/data/plugins/boot.conf/bootstrap.json

sudo service php7.2-fpm start
sudo service php7.2-fpm status

sudo sed -i -e "s/listen.owner\s*=\s*www-data/listen.owner = cells/g" /etc/php/7.2/fpm/pool.d/www.conf
sudo sed -i -e "s/listen.group\s*=\s*www-data/listen.group = cells/g" /etc/php/7.2/fpm/pool.d/www.conf

sudo service php7.2-fpm restart
