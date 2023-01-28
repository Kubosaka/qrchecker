DROP DATABASE IF EXISTS sample_db;
CREATE DATABASE sample_db;
use sample_db;

DROP TABLE IF EXISTS users;

CREATE TABLE users (
  `id` INT NOT NULL AUTO_INCREMENT,
  `user_id` INT,
  `name` VARCHAR(255),
  `email` VARCHAR(255),
  `password` VARCHAR(255),
  PRIMARY KEY (`id`)
);


INSERT INTO users (id, user_id, name, email, password) VALUES (1, 10000, "IyodaAkira", "iyoda@example.com", "aaaaaaa");
INSERT INTO users (id, user_id, name, email, password) VALUES (2, 20000, "YamadaTarou", "yamada@example.com", "bbbbbbb");
INSERT INTO users (id, user_id, name, email, password) VALUES (3, 30000, "SuzukiHanako", "suzuki@example.com", "bbbbbbb");
INSERT INTO users (id, user_id, name, email, password) VALUES (4, 40000, "SatouRin", "satou@example.com", "bbbbbbb");
INSERT INTO users (id, user_id, name, email, password) VALUES (5, 50000, "HakaseTarou", "hakase@example.com", "ccccccc");
INSERT INTO users (id, user_id, name, email, password) VALUES (6, 60000, "KubosakaShungo", "kubosaka@example.com", "Kubosaka");
