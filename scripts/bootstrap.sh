#!/bin/bash

# Install composer dependencies
composer install --dev --prefer-dist --working-dir=/var/www

mysql -uroot < /var/www/doc/mysql/bootstrap.sql

# Update database schema
php /var/www/public/index.php orm:schema-tool:update --force

# Populate database with mock data
php /var/www/public/index.php dbal:import /var/www/doc/mysql/inject.sql