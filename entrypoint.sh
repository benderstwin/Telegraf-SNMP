#!/bin/sh
set -e

if [ "${1:0:1}" = '-' ]; then
    set -- telegraf "$@"
fi
cp /etc/telegraf/mibs/* /usr/share/snmp/mibs/
exec "$@"