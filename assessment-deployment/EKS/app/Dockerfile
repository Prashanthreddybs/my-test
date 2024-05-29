# Use the official PHP image as the base image
FROM php:8.1-apache

# Set the working directory
WORKDIR /var/www/html

# Copy the application code to the container
COPY ./index.html /var/www/html

# Install dependencies
RUN apt-get update && apt-get install -y \
    libpng-dev \
    libjpeg-dev \
    libfreetype6-dev \
    && docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install gd

# Install additional PHP extensions if needed
RUN docker-php-ext-install pdo pdo_mysql

# Enable Apache mod_rewrite
RUN a2enmod rewrite

# Expose port 80
EXPOSE 80

# Start Apache server
CMD ["apache2-foreground"]

