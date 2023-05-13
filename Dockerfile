FROM composer:2.5.5 as builder

WORKDIR /app

COPY . /app

ENV COMPOSER_ALLOW_SUPERUSER=1

RUN composer update

RUN composer require fideloper/proxy

RUN composer install

FROM php:8.1.19-apache as production

COPY --from=builder /app /var/www/html

WORKDIR /var/www/html

RUN apt-get update && apt-get install -y libzip-dev zip unzip

RUN docker-php-ext-install pdo_mysql zip

RUN php artisan key:generate

CMD php artisan serve --host=0.0.0.0 --port=80
