#!/bin/sh
# restart container if no network connectivity, fixes a bug introduced with docker 1.12
route -n | grep "^0.0.0.0" | awk '{print $2}' | xargs ping -c1 || exit
exec /bin/consul agent -server -config-dir=/config "$@"
