#!/usr/bin/env bash
docker-compose run --rm -e MAIN=false backend python manage.py $@
