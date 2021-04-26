SET SESSION FOREIGN_KEY_CHECKS = 0;

BEGIN;

CREATE TABLE company
(
    company_cd int NOT NULL,
    rr_cd int NOT NULL,
    company_name varchar(255) NOT NULL,
    company_name_k varchar(255),
    company_name_h varchar(255),
    company_name_r varchar(255),
    company_url varchar(255),
    company_type int,
    e_status int,
    e_sort int,
    PRIMARY KEY (company_cd)
);

CREATE TABLE line
(
    line_cd int NOT NULL ,
    company_cd int NOT NULL,
    line_name varchar(255) NOT NULL,
    line_name_k varchar(255),
    line_name_h varchar(255),
    line_color_c varchar(255),
    line_color_t varchar(255),
    line_type int,
    lon float,
    lat float,
    zoom int,
    e_status int,
    e_sort int,
    PRIMARY KEY (line_cd)
);

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

CREATE TABLE station_join
(
    line_cd int NOT NULL,
    station_cd1 int NOT NULL,
    station_cd2 int NOT NULL,
    PRIMARY KEY (line_cd, station_cd1, station_cd2)
);

COMMIT;