#!/bin/sh
echo "Preparing static..."
python manage.py collectstatic --noinput

echo "Waiting for postgres..."

while ! nc -z postgres 5432; do
  sleep 0.1
done

echo "PostgreSQL started"

echo "Migrating..."
python manage.py migrate

echo "Starting server..."
python manage.py runserver 0.0.0.0:8000