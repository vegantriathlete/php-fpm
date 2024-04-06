FROM php:fpm-alpine3.19

RUN apk update \
&&  apk add \
        composer \
        vim \
        libjpeg-turbo-dev \
        libpng-dev \
        libwebp-dev \
        freetype-dev \
        libpq-dev \
&&  docker-php-ext-configure gd \
        --with-jpeg \
        --with-webp \
        --with-freetype \
&&  docker-php-ext-configure pgsql \
        -with-pgsql=/usr/local/pgsql \
&&  pecl install apcu \
&&  docker-php-ext-install \
       gd opcache pdo_pgsql pgsql  \
&&  docker-php-ext-enable \
       apcu gd opcache pdo_pgsql pgsql

COPY composer /usr/bin/composer
RUN chmod 755 /usr/bin/composer
