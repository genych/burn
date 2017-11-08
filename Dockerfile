FROM hhvm/hhvm-proxygen:3.21.3

RUN mkdir -p /var/www &&\
    chown www-data:www-data /var/www &&\
    chmod 0755 /var/www

COPY ./src/burn.hh /var/www/public/burn.hh

USER www-data
WORKDIR /var/www/public

EXPOSE 8080
