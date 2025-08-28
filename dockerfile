FROM php:8.3-fpm

# 必要な拡張機能をインストール
RUN apt-get update && apt-get install -y \
    libpq-dev \
    nodejs \
    npm \
    git \
    unzip

RUN docker-php-ext-install pdo pdo_pgsql

# Composer をインストール
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer
