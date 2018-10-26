# Dev Env

This project installs and configures Elasticsearch, Mongo, Redis, & Memcached on your local machine.
It requires:

* docker v18.06.1
    Docker must be configured with a minimum of 8 cpus & 10 GiB memory

To use, from the root of the directory run
```
    docker-compose up -d && \
    docker-compose exec mongo sh -c 'mongo < /data/mongodb/scripts/cluster-init.js && mongo < /data/mongodb/scripts/cluster-config.js';
```

To destroy your local env and start from scratch run
```
    docker-compose down && \
    docker-compose up -d && \
    docker-compose exec mongo sh -c 'mongo < /data/mongodb/scripts/cluster-init.js && mongo < /data/mongodb/scripts/cluster-config.js';
```
If you want the logs from the containers output to the terminal, omit the `-d` flag from the `docker-compose up` commands

You can stop running containers with `docker-compose stop` and restart with `docker-compose start`

That's it. You should now have all services needed to run MLP & Agile Product running locally
