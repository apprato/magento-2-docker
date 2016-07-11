FROM nginx:1.10.1
# OSX file share issue

RUN mkdir -p /var/www/html
# Modify OSX uid and guid to be www-data 
RUN groupmod -g 500 www-data \
    && usermod -u 500 www-data \
    && `find /var/www -user 33 -exec chown -h www-data {} \;` \
    && `find /var/www -group 33 -exec chgrp -h www-data {} \;` \
    && usermod -g 500 www-data \
    && chown -R www-data:www-data /var/www \
    && chmod g+s /var/www
