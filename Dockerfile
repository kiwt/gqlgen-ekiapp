FROM postgres:10.7
WORKDIR ./
COPY mysql/init /docker-entrypoint-initdb.d/