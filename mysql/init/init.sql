SET SESSION FOREIGN_KEY_CHECKS = 0;

BEGIN;

CREATE TABLE station
(
    station_cd int NOT NULL,
    station_g_cd int NOT NULL,
    station_name varchar(255) NOT NULL,
    station_name_k varchar(255),
    station_name_r varchar(255),
    line_cd int,
    pref_cd int,
    post varchar(255),
    address varchar(255),
    lon float,
    lat float,
    open_ymd varchar(255) ,
    close_ymd varchar(255),
    e_status int,
    e_sort int,
    PRIMARY KEY (station_cd)
);

LOAD DATA INFILE '/docker-entrypoint-initdb.d/station20210312free.csv' INTO TABLE station FIELDS TERMINATED BY ',' ENCLOSED BY '\"' LINES TERMINATED BY '\n' IGNORE 1 LINES;

COMMIT;