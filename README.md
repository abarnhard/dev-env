# Dev Env
This project installs and configures Elasticsearch, Mongo, Redis, & Memcached on your local machine.
It requires:
* docker

To use, run `docker-compose up` from the root. If you don't want to see the log output, run `docker-compose up --detach` to run images in background

run `docker-compose exec mongo sh -c 'mongo < /data/mongodb/scripts/cluster-init.js && mongo < /data/mongodb/scripts/cluster-config.js'`

That's it. You should now have all services needed to run MLP & Agile Product running locally
