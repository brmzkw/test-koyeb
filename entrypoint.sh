#!/bin/sh


echo "Executing entrypoint"

exec /docker-entrypoint.sh "$@"
