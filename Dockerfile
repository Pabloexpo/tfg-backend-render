FROM php:8.2-apache

# Instala dependencias de sistema
RUN apt-get update && apt-get install -y \
    git zip unzip curl libpng-dev libonig-dev libxml2-dev libzip-dev \
    && docker-php-ext-install pdo pdo_mysql mbstring exif pcntl bcmath gd zip

# Instala Composer
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

# Copia el código del proyecto
COPY . /var/www/html

# Establece el directorio de trabajo
WORKDIR /var/www/html

# Asigna permisos necesarios
RUN chown -R www-data:www-data /var/www/html \
    && chmod -R 755 /var/www/html/storage

# Activa mod_rewrite de Apache
RUN a2enmod rewrite

# Usa la configuración personalizada de Apache
COPY ./render.apache.conf /etc/apache2/sites-available/000-default.conf

# Instala dependencias de Laravel
RUN composer install --no-dev --optimize-autoloader

# Expone el puerto
EXPOSE 80
