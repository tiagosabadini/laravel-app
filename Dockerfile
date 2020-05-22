FROM php:7.3.6-fpm-alpine3.9

RUN apk add bash mysql-client curl
RUN docker-php-ext-install pdo pdo_mysql

WORKDIR /var/www

# Delete html folder
RUN rm -rf /var/www/html

COPY . .

# Create a simbolic link to public into html
RUN ln -s public html

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

EXPOSE 9000
ENTRYPOINT ["php-fpm"]