#!/bin/sh

export FREEGEOIP_CUSTOM_UPDATES_URL=$INITIAL_DATABASE_URL

mkdir -p /tmp/freegeoip

[ -f "/db.gz" ] && cp /db.gz /tmp/freegeoip/db.gz

exec /go/bin/freegeoip -use-x-forwarded-for
