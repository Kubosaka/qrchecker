DROP DATABASE IF EXISTS sample_db;
CREATE DATABASE sample_db;
use sample_db;

DROP TABLE IF EXISTS users;

CREATE TABLE users (
  `id` INT NOT NULL AUTO_INCREMENT,
  `user_id` INT,
  `faculty` VARCHAR(255),
  `department` VARCHAR(255),
  `major` VARCHAR(255),
  `course` VARCHAR(255),
  `grade` VARCHAR(255),
  `name` VARCHAR(255),
  `email` VARCHAR(255),
  `password` VARCHAR(255),
  PRIMARY KEY (`id`)
);



INSERT INTO users (id, user_id, faculty, department, major, course, grade, name, email, password) VALUES (1, 10000, "Business_Administration", "Business_Administration", "Management_Information_Systems", "Bachelor", 3, "IyodaAkira", "iyoda@example.com", "aaaaaaa");
INSERT INTO users (id, user_id, faculty, department, major, course, grade, name, email, password) VALUES (2, 20000, "Business_Administration", "Business_Administration", "Management_Information_Systems", "Bachelor", 2, "YamadaTarou", "yamada@example.com", "bbbbbbb");
INSERT INTO users (id, user_id, faculty, department, major, course, grade, name, email, password) VALUES (3, 30000, "Business_Administration", "Business_Administration", "Management_Information_Systems", "Bachelor", 1, "SuzukiHanako", "suzuki@example.com", "bbbbbbb");
INSERT INTO users (id, user_id, faculty, department, major, course, grade, name, email, password) VALUES (4, 40000, "Business_Administration", "Business_Administration", "Management_Information_Systems", "Bachelor", 2, "SatouRin", "satou@example.com", "bbbbbbb");
INSERT INTO users (id, user_id, faculty, department, major, course, grade, name, email, password) VALUES (5, 50000, "Business_Administration", "Business_Administration", "Management_Information_Systems", "Bachelor", 3, "HakaseTarou", "hakase@example.com", "ccccccc");

