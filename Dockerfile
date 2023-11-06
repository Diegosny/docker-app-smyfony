FROM  php:8.2.12-fpm-bullseye

WORKDIR /var/www/html

COPY --from=composer:latest /usr/bin/composer /usr/bin/composer
COPY . /var/www/html

RUN composer install

EXPOSE 9000