FROM php:7.4-apache

COPY . /var/www/html

RUN docker-php-ext-install pdo pdo_mysql

RUN a2enmod rewrite
