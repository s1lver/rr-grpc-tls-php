FROM php:8.0.20-fpm
RUN apt-get update \
    && apt-get install -y vim wget git htop unzip zlib1g-dev libpng-dev libzip-dev libpq-dev libicu-dev iputils-ping libnss3-tools
RUN docker-php-ext-install bcmath zip gd intl
RUN docker-php-ext-install sockets
RUN pecl install grpc-1.44.0
RUN pecl install protobuf-3.19.4
RUN docker-php-ext-enable grpc protobuf

RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
RUN php composer-setup.php
RUN php -r "unlink('composer-setup.php');"
RUN mv composer.phar /usr/local/bin/composer
RUN curl --remote-name --time-cond ./php/cacert.pem https://curl.se/ca/cacert.pem

ENV COMPOSER_ALLOW_SUPERUSER 1

WORKDIR /var/www

ENTRYPOINT ["sh", "docker/entrypoint.sh"]