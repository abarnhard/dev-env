#!/bin/bash

start_service="start"
stop_service="stop"
build_service="build"
rebuild_service="rebuild"

if [ -z "$1" ]; then
  echo 'Error: valid arguments are start, stop, build, rebuild'
  exit 1
fi

action="$(echo \"$1\" | awk '{print tolower($0)}')"
echo "$action"
if [ "$action" == "$start_service" ]; then
    echo 'hit 1'
    docker-compose start;
elif [ "$action" == "$stop_service" ]; then
    echo 'hit 2'
    docker-compose stop;
elif [ "$action" == "$build_service" ]; then
    echo 'hit 3'
    docker-compose up -d && \
    docker-compose exec mongo sh -c 'mongo < /data/mongodb/scripts/cluster-init.js && mongo < /data/mongodb/scripts/cluster-config.js';
elif [ $action == $rebuild_service ]; then
    echo 'hit 4'
    docker-compose down && \
    docker-compose up -d && \
    docker-compose exec mongo sh -c 'mongo < /data/mongodb/scripts/cluster-init.js && mongo < /data/mongodb/scripts/cluster-config.js';
else
    echo 'hit 4'
    echo 'Error: valid arguments are start, stop, build, rebuild';
fi
