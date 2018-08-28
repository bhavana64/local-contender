FROM php:7.2-fpm

RUN apt-get update && apt-get install -y \
    openssl --no-install-recommends \
    && pecl install redis \
    && docker-php-ext-enable redis \
    && docker-php-ext-install pdo pdo_mysql mbstring
