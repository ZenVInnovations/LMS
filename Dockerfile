FROM php:8.2-apache

# Install required PHP extensions and dependencies
RUN apt-get update && apt-get install -y \
    libpng-dev \
    libxml2-dev \
    libzip-dev \
    libicu-dev \
    libpq-dev \
    zip \
    unzip \
    git \
    && docker-php-ext-configure intl \
    && docker-php-ext-install -j$(nproc) \
    gd \
    intl \
    mysqli \
    opcache \
    pdo_mysql \
    pdo_pgsql \
    pgsql \
    soap \
    zip

# Enable Apache modules
RUN a2enmod rewrite ssl headers

# Configure PHP
RUN mv "$PHP_INI_DIR/php.ini-production" "$PHP_INI_DIR/php.ini"

# Set recommended PHP.ini settings
RUN { \
    echo 'max_input_vars = 5000'; \
    echo 'memory_limit = 512M'; \
    echo 'post_max_size = 50M'; \
    echo 'upload_max_filesize = 50M'; \
    echo 'max_execution_time = 600'; \
} > /usr/local/etc/php/conf.d/moodle-recommended.ini

# Create moodledata directory and set permissions
RUN mkdir -p /var/www/moodledata && \
    chown -R www-data:www-data /var/www/moodledata && \
    chmod 777 /var/www/moodledata

# Copy Moodle files
COPY . /var/www/html/
RUN chown -R www-data:www-data /var/www/html/

# Set the working directory
WORKDIR /var/www/html

# Expose port 80
EXPOSE 80 