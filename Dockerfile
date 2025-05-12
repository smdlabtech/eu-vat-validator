FROM php:8-fpm AS build

RUN ( curl -sSLf https://github.com/mlocati/docker-php-extension-installer/releases/latest/download/install-php-extensions -o - || echo 'return 1' ) | sh -s \
    @composer

ADD . /var/www/app

WORKDIR /var/www/app

RUN composer install --no-dev

FROM php:8-fpm AS prod

WORKDIR /var/www/app

COPY --from=build --chown=www-data:www-data /var/www/app .

ADD www.conf /usr/local/etc/php/conf.d/www.conf

USER www-data
