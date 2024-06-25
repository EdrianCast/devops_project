#!/bin/sh

# Wait for MySQL to be available
echo "waiting for MySQL..."
while ! nc -z mysql 3306; do
  sleep 1
done
echo "MySQL is up - executing command"

# Executing migrations and seeder
php artisan migrate --force
php artisan db:seed --force

# Start PHP-FPM
php-fpm

