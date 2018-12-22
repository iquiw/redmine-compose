#! /bin/sh

set -e

EXTERNAL_FILTER_CONFIG=/usr/src/redmine/plugins/wiki_external_filter/config/wiki_external_filter.yml

if [ -f "$EXTERNAL_FILTER_CONFIG" ]; then
	cp "$EXTERNAL_FILTER_CONFIG" /usr/src/redmine/config/
fi

exec /docker-entrypoint.sh passenger start
