DROP DATABASE IF EXISTS sample_db;
CREATE DATABASE sample_db;
use sample_db;

DROP TABLE IF EXISTS users;

CREATE TABLE users (
  id           INT(10) unsigned not null auto_increment,
  name     VARCHAR(255) not null,
  mailadress varchar(255) not null,
  passward varchar(255) not null,
  primary key (id)
);

INSERT INTO users (id, name, mailadress,passward) VALUES (1, "Yamada", "yamada@example.com","aaaaaa");
INSERT INTO users (id, name, mailadress,passward) VALUES (2, "Kubosaka", "kubosaka@example.com","bbbbbb");
