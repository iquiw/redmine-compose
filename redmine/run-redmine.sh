#! /bin/sh

set -e

EXTERNAL_FILTER_CONFIG=/usr/src/redmine/plugins/wiki_external_filter/config/wiki_external_filter.yml

bundle install --with test

if [ -f "$EXTERNAL_FILTER_CONFIG" ]; then
	cp "$EXTERNAL_FILTER_CONFIG" /usr/src/redmine/config/
fi

exec /docker-entrypoint.sh rails server -b 0.0.0.0
