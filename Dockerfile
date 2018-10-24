FROM nothingspare/oakridge-wordpress-base:dev

# Add system packages
RUN apt-get update && apt-get install -y pecl install xdebug-2.6.0

# Config, enable xdebug
ADD debugger.ini /usr/local/etc/php/
RUN docker-php-ext-enable xdebug

# Cleanup
RUN apt-get clean
RUN rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
