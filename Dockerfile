FROM php:5.6

ADD . /code
WORKDIR /code

RUN apt-get update

RUN apt-get install -y \
libicu-dev

RUN docker-php-ext-install \
pdo \
pdo_mysql \
intl \
mbstring
