#!/bin/bash

if [ "$DATABASE" = "netflix" ]
then
    echo "Waiting for postgres..."

    while ! nc -z $SQL_HOST $SQL_PORT; do
      sleep 0.1
    done

    echo "PostgreSQL started"
fi

sleep 2


python3 manage.py migrate
python3 manage.py runserver 0.0.0.0:8000

exec "$@"