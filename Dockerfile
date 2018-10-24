FROM nothingspare/oakridge-wordpress-base:dev

# Config, enable xdebug
RUN pecl install xdebug-2.6.0
ADD debugger.ini /usr/local/etc/php/
RUN docker-php-ext-enable xdebug

# Cleanup
RUN apt-get clean
RUN rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
