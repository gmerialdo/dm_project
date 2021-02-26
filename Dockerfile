FROM php:7.4-apache

RUN apt-get update -y && apt-get install -y libpng-dev && apt-get install -y libcurl4-openssl-dev
RUN docker-php-ext-install pdo pdo_mysql gd curl
COPY start-apache /usr/local/bin
RUN a2enmod rewrite

COPY . /var/www/html
RUN chown -R www-data:www-data /var/www/html

CMD ["start-apache"]
