#!/bin/sh
set -e

if [ "${1:0:1}" = '-' ]; then
    set -- telegraf "$@"
fi
cp -r /etc/telegraf/mibs/* /usr/share/snmp/mibs/
exec "$@"