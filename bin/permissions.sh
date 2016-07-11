#!/bin/sh
#
# Set the correct permissions after installing via composer or checking out from git into wwww

chmod 777 ../www/var
chmod 777 ../www/var/page_cache

chmod 777 ../www/pub/errors
chmod 777 ../www/pub/media

chmod 777 ../www/app/etc

chmod 755 ../www/bin/magento