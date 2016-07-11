## Magento 2 Dockerized Environment Base Setup (OSX)

# Containers

* nGinx
* PHP / PHP 5.6
* MariaDB
* Redis


# Install Magento via composer or Git
http://devdocs.magento.com/guides/v2.0/install-gde/prereq/integrator_install.html


# Set Correct permissions
cd bin
sh permissions.sh


# Add local URL to hostfile
Use IP for local host, e.g.

/etc/hosts
192.168.99.100 magento2.dev

# Create dockerised environments
docker-compose up -d
docker-compose build


# Install database tables 
docker exec -it namgeofcontainer_php bash
cd /var/www/html/magento2.dev; \
bin/magento setup:install --admin-user="adminuser" --admin-firstname="admin_firstname" --admin-lastname="admin_firstname" \
--admin-email="user@admin.com" --admin-password="admin_password"

