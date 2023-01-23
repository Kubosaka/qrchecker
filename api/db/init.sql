DROP DATABASE IF EXISTS sample_db;
CREATE DATABASE sample_db;
use sample_db;

DROP TABLE IF EXISTS users;

CREATE TABLE users (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255),
  `email` VARCHAR(255),
  `password` VARCHAR(255),
  PRIMARY KEY (`id`)
);

INSERT INTO users (id, name, email, password) VALUES (1, "Yamada", "yamada@example.com", "aaaaaaa");
INSERT INTO users (id, name, email, password) VALUES (2, "Yamada2", "yamada2@example.com", "aaaaaaa");
INSERT INTO users (id, name, email, password) VALUES (3, "Yamada3", "yamada3@example.com", "bbbbbbb");
INSERT INTO users (id, name, email, password) VALUES (4, "Yamada4", "yamada4@example.com", "bbbbbbb");

