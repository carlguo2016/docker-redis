# Pull base image.
FROM redis:alpine3.8

# Define maintainer
MAINTAINER carl "yanbo.guo@zjhzxy.com"

# Copy conf.
COPY etc/redis.conf /usr/local/etc/redis/redis.conf

# Define mountable directories.
VOLUME ["/data"]

# Define working directory.
WORKDIR /data

# Define default command.
CMD ["redis-server", "/usr/local/etc/redis/redis.conf"]

# Expose ports.
EXPOSE 6379