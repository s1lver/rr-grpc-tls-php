FROM php:8.0.22-fpm
RUN apt-get update \
    && apt-get install -y vim wget htop unzip zlib1g-dev libpng-dev libzip-dev libicu-dev iputils-ping libnss3-tools
RUN docker-php-ext-install bcmath zip gd intl sockets
RUN pecl install grpc-1.44.0
RUN pecl install protobuf-3.19.4
RUN docker-php-ext-enable grpc protobuf

COPY --from=composer:latest /usr/bin/composer /usr/local/bin/composer

RUN curl -JLO "https://dl.filippo.io/mkcert/latest?for=linux/amd64"
RUN chmod +x mkcert-v*-linux-amd64
RUN mv mkcert-v*-linux-amd64 /usr/local/bin/mkcert

ENV COMPOSER_ALLOW_SUPERUSER 1

WORKDIR /var/www