FROM php:7.1-apache

RUN apt-get update

RUN apt-get update && apt-get install -y \
        nano \
        libfreetype6-dev \
        libjpeg62-turbo-dev \
        libmcrypt-dev \
        libpng12-dev \
    && docker-php-ext-install -j$(nproc) iconv mcrypt \
    && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
    && docker-php-ext-install -j$(nproc) gd

RUN a2enmod rewrite

COPY ./config/php.ini /usr/local/etc/php/
COPY ./config/*.conf /etc/apache2/sites-available/
COPY ./config/hosts.conf /usr/local/share/
RUN service apache2 restart

WORKDIR /var/www/html
