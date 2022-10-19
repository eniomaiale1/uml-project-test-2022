FROM appsvc/php:7.4-apache-xdebug_20200522.6

RUN apt-get update && apt-get install -y \
        libfreetype6-dev \
        libjpeg62-turbo-dev \
        libpng-dev \
        iputils-ping \
        git \
        vim \
        zip \
    && docker-php-ext-install -j$(nproc) iconv \
    && docker-php-ext-configure gd --with-freetype=/usr/include/ --with-jpeg=/usr/include/ \
    && docker-php-ext-install -j$(nproc) gd \
    && docker-php-ext-install pdo pdo_mysql \
    # Installation of Image Magic PHP Extension
    && apt install -y libmagickwand-dev --no-install-recommends && \
    pecl install imagick && docker-php-ext-enable imagick && \
    # Removal of packages that are only used to compile/install the extensions
    rm -rf /var/lib/apt/lists/*

#Remove php opcache file -only for development
RUN rm -rf /usr/local/etc/php/conf.d/opcache-recommended.ini

# enable mods
RUN a2enmod headers \
    rewrite

COPY init.sh /usr/local/bin/init.sh
RUN chmod u+x /usr/local/bin/init.sh

WORKDIR /home/site/wwwroot

ENTRYPOINT ["/usr/local/bin/init.sh"]
