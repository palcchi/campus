#!/usr/bin/env sh
set -e

if [ ! -f .env ]; then
  cp env .env
fi

if [ ! -d vendor ] || [ ! -f vendor/autoload.php ]; then
  composer install --no-interaction --prefer-dist --optimize-autoloader
fi

exec php spark serve --host 0.0.0.0 --port 8080
