#!/usr/bin/env bash
set -e

virtualenv -p /usr/local/bin/python .venv
source .venv/bin/activate
pip install --upgrade pip
pip install -r requirements.txt

chown -R ${UWSGI_UID:-1000}:${UWSGI_GID:-1000} .venv

USE_DOT_VENV=1 ./run_uwsgi.sh

exec "$@"
