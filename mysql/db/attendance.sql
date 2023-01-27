use sample_db;
DROP TABLE IF EXISTS attendances;
CREATE TABLE attendances (
  `id` INT NOT NULL AUTO_INCREMENT,
  `lecture_number` INT,
  `lecture_name` VARCHAR(255),
  `user_number` INT,
  `user_name` VARCHAR(255),
  `first` boolean default 0,
  `second` boolean default 0,
  `third` boolean default 0,
  `fourth` boolean default 0,
  `fifth` boolean default 0,
  `sixth` boolean default 0,
  `seventh` boolean default 0,
  `eighth` boolean default 0,
  `ninth` boolean default 0,
  `tenth` boolean default 0,
  `eleventh` boolean default 0,
  `twelfth` boolean default 0,
  `thirteenth` boolean default 0,
  `fourteenth` boolean default 0,
  `fifteenth` boolean default 0,
  PRIMARY KEY (`id`)
);
INSERT INTO attendances (id, lecture_number, lecture_name, user_number, user_name) VALUES (1,12989393, "Computer", 22330191, "AkiraIyoda");
INSERT INTO attendances (id, lecture_number, lecture_name, user_number, user_name) VALUES (2,12000000, "Engilsh", 22330191, "AkiraIyoda");
