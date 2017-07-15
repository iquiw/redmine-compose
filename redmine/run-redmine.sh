#! /bin/sh

set -e

bundle install --without development test

exec /docker-entrypoint.sh rails server -b 0.0.0.0
