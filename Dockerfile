FROM postgres:10.7
WORKDIR ./
COPY postgresql/init /docker-entrypoint-initdb.d/