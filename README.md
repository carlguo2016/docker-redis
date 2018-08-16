### Usage

#### Run `redis-server`

    docker run -d --name redis -p 6379:6379 carlguo2018/docker-redis

#### Run `redis-server` with persistent data directory. (creates `dump.rdb`)

    docker run -d -p 6379:6379 -v <data-dir>:/data --name redis carlguo2018/docker-redis

#### Run `redis-server` with persistent data directory and password.

    docker run -d -p 6379:6379 -v <data-dir>:/data --name redis carlguo2018/docker-redis redis-server /usr/local/etc/redis/redis.conf --requirepass <password>

#### Run `redis-cli`

    docker run -it --rm --link redis:redis carlguo2018/docker-redis bash -c 'redis-cli -h redis'