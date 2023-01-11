FROM debian:buster

RUN apt-get update
RUN apt-get install redis-server -y

COPY ./redis_cache.sh /tmp/

RUN /bin/bash /tmp/redis_cache.sh

EXPOSE 6000

CMD ["redis-server", "--protected-mode", "no"]