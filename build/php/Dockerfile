# Official Repository
FROM php:5.6-fpm
RUN apt-get update

RUN \
  apt-get install -y \
  g++ \
  autoconf \
  libbz2-dev \
  libltdl-dev \
  libpng12-dev \
  libjpeg62-turbo-dev \
  libfreetype6-dev \
  libxpm-dev \
  libimlib2-dev \
  libicu-dev \
  libmcrypt-dev \
  libxslt1-dev \
  re2c \
  libpng++-dev \
  libpng3 \
  libvpx-dev \
  zlib1g-dev \
  libgd-dev \
  libtidy-dev \
  libmagic-dev \
  libexif-dev \
  file \
  libssh2-1-dev \
  libjpeg-dev \
  git \
  libcurl4-gnutls-dev \
  wget \
  librabbitmq-dev \
  libzip-dev \
  libzip2

RUN docker-php-ext-configure \
  gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/

RUN curl -sS https://getcomposer.org/installer | \
  php -- \
    --install-dir=/usr/local/bin \
    --filename=composer \
    --version=1.1.2

# http://devdocs.magento.com/guides/v2.0/install-gde/system-requirements.html
RUN \
  /usr/local/bin/docker-php-ext-install \
  curl \
  bcmath \
  gd \
  mcrypt \
  mysql \
  opcache \
  pdo_mysql \
  soap \
  intl \
  xsl \
  zip
