FROM php:8.0-apache

WORKDIR /var/www/html

RUN apt-get update && apt-get install -y libzip-dev zip unzip

RUN docker-php-ext-install pdo_mysql zip

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

COPY . /var/www/html

ENV COMPOSER_ALLOW_SUPERUSER=1

RUN composer update

RUN composer require fideloper/proxy

RUN composer install

RUN php artisan key:generate

RUN php artisan migrate

RUN php artisan make:controller ProductController --resource --model=Product

CMD php artisan serve --host=0.0.0.0 --port=80