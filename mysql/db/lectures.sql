use sample_db;

DROP TABLE IF EXISTS lectures;

CREATE TABLE lectures (
  `id` INT NOT NULL AUTO_INCREMENT,
  `number` INT,
  `name` VARCHAR(255),
  `teacher` VARCHAR(255),
  `fiscal_year` DATE,
  `start_time` TIME,
  `end_time` TIME,
  PRIMARY KEY (`id`)
);

INSERT INTO lectures VALUES (1, 1111, "asdf", "asdf" ,'2023-01-17', '15:25:07', '15:25:07');
