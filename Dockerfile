FROM mysql:5.7
COPY ./mysql/config /etc/mysql/conf.d/
COPY ./mysql/init /docker-entrypoint-initdb.d/