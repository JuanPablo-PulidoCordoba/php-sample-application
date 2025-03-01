FROM php:7.1-apache

RUN docker-php-ext-install mysqli pdo pdo_mysql

RUN apt-get update && apt-get install -y vim default-mysql-client

RUN a2enmod rewrite

COPY . /var/www/html/

COPY apache-config/000-default.conf /etc/apache2/sites-available/000-default.conf

RUN chown -R www-data:www-data /var/www/html

EXPOSE 80

