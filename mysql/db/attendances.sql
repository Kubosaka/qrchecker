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

INSERT INTO attendances (id, lecture_number, lecture_name, user_number, user_name) VALUES (1,10000001, "Japanese", 10000, "IyodaAkira");
INSERT INTO attendances (id, lecture_number, lecture_name, user_number, user_name) VALUES (2,20000002, "Engilsh", 10000, "IyodaAkira");
INSERT INTO attendances (id, lecture_number, lecture_name, user_number, user_name) VALUES (3,30000003, "Math",10000, "IyodaAkira");
INSERT INTO attendances (id, lecture_number, lecture_name, user_number, user_name) VALUES (4,40000004, "Social_studies", 10000, "IyodaAkira");
INSERT INTO attendances (id, lecture_number, lecture_name, user_number, user_name) VALUES (5,50000005, "Politics_and_economics", 10000, "IyodaAkira");
INSERT INTO attendances (id, lecture_number, lecture_name, user_number, user_name) VALUES (6,60000006, "Science", 10000, "IyodaAkira");
INSERT INTO attendances (id, lecture_number, lecture_name, user_number, user_name) VALUES (7,70000007, "Art", 10000, "IyodaAkira");
INSERT INTO attendances (id, lecture_number, lecture_name, user_number, user_name) VALUES (8,80000008, "Music", 10000, "IyodaAkira");
INSERT INTO attendances (id, lecture_number, lecture_name, user_number, user_name) VALUES (9,90000009, "Physical_education", 10000, "IyodaAkira");
INSERT INTO attendances (id, lecture_number, lecture_name, user_number, user_name) VALUES (10,10000010, "Special_activities", 10000, "IyodaAkira");
INSERT INTO attendances (id, lecture_number, lecture_name, user_number, user_name) VALUES (11,10000011, "Period_for_integrated_study", 10000, "IyodaAkira");
INSERT INTO attendances (id, lecture_number, lecture_name, user_number, user_name) VALUES (12,12000012, "Health", 10000, "IyodaAkira");

INSERT INTO attendances (id, lecture_number, lecture_name, user_number, user_name) VALUES (13,10000001, "Japanese", 20000, "YamadaTarou");
INSERT INTO attendances (id, lecture_number, lecture_name, user_number, user_name) VALUES (14,20000002, "Engilsh", 20000, "YamadaTarou");
INSERT INTO attendances (id, lecture_number, lecture_name, user_number, user_name) VALUES (15,30000003, "Math", 20000, "YamadaTarou");
INSERT INTO attendances (id, lecture_number, lecture_name, user_number, user_name) VALUES (16,40000004, "Social_studies", 20000, "YamadaTarou");
INSERT INTO attendances (id, lecture_number, lecture_name, user_number, user_name) VALUES (17,50000005, "Politics_and_economics", 20000, "YamadaTarou");
INSERT INTO attendances (id, lecture_number, lecture_name, user_number, user_name) VALUES (18,60000006, "Science", 20000, "YamadaTarou");
INSERT INTO attendances (id, lecture_number, lecture_name, user_number, user_name) VALUES (19,70000007, "Art", 20000, "YamadaTarou");
INSERT INTO attendances (id, lecture_number, lecture_name, user_number, user_name) VALUES (20,80000008, "Music", 20000, "YamadaTarou");
INSERT INTO attendances (id, lecture_number, lecture_name, user_number, user_name) VALUES (21,90000009, "Physical_education", 20000, "YamadaTarou");
INSERT INTO attendances (id, lecture_number, lecture_name, user_number, user_name) VALUES (22,10000010, "Special_activities", 20000, "YamadaTarou");
INSERT INTO attendances (id, lecture_number, lecture_name, user_number, user_name) VALUES (23,10000011, "Period_for_integrated_study", 20000, "YamadaTarou");
INSERT INTO attendances (id, lecture_number, lecture_name, user_number, user_name) VALUES (24,12000012, "Health", 20000, "YamadaTarou");

INSERT INTO attendances (id, lecture_number, lecture_name, user_number, user_name) VALUES (25,10000001, "Japanese", 30000, "SuzukiHanako");
INSERT INTO attendances (id, lecture_number, lecture_name, user_number, user_name) VALUES (26,20000002, "Engilsh", 30000, "SuzukiHanako");
INSERT INTO attendances (id, lecture_number, lecture_name, user_number, user_name) VALUES (27,30000003, "Math", 30000, "SuzukiHanako");
INSERT INTO attendances (id, lecture_number, lecture_name, user_number, user_name) VALUES (28,40000004, "Social_studies", 30000, "SuzukiHanako");
INSERT INTO attendances (id, lecture_number, lecture_name, user_number, user_name) VALUES (29,50000005, "Politics_and_economics", 30000, "SuzukiHanako");
INSERT INTO attendances (id, lecture_number, lecture_name, user_number, user_name) VALUES (30,60000006, "Science", 30000, "SuzukiHanako");
INSERT INTO attendances (id, lecture_number, lecture_name, user_number, user_name) VALUES (31,70000007, "Art", 30000, "SuzukiHanako");
INSERT INTO attendances (id, lecture_number, lecture_name, user_number, user_name) VALUES (32,80000008, "Music", 30000, "SuzukiHanako");
INSERT INTO attendances (id, lecture_number, lecture_name, user_number, user_name) VALUES (33,90000009, "Physical_education", 30000, "SuzukiHanako");
INSERT INTO attendances (id, lecture_number, lecture_name, user_number, user_name) VALUES (34,10000010, "Special_activities", 30000, "SuzukiHanako");
INSERT INTO attendances (id, lecture_number, lecture_name, user_number, user_name) VALUES (35,11000011, "Period_for_integrated_study", 30000, "SuzukiHanako");
INSERT INTO attendances (id, lecture_number, lecture_name, user_number, user_name) VALUES (36,12000012, "Health", 30000, "SuzukiHanako");

INSERT INTO attendances (id, lecture_number, lecture_name, user_number, user_name) VALUES (37,10000001, "Japanese", 40000, "SatouRin");
INSERT INTO attendances (id, lecture_number, lecture_name, user_number, user_name) VALUES (38,20000002, "Engilsh", 40000, "SatouRin");
INSERT INTO attendances (id, lecture_number, lecture_name, user_number, user_name) VALUES (39,30000003, "Math", 40000, "SatouRin");
INSERT INTO attendances (id, lecture_number, lecture_name, user_number, user_name) VALUES (40,40000004, "Social_studies", 40000, "SatouRin");
INSERT INTO attendances (id, lecture_number, lecture_name, user_number, user_name) VALUES (41,50000005, "Politics_and_economics", 40000, "SatouRin");
INSERT INTO attendances (id, lecture_number, lecture_name, user_number, user_name) VALUES (42,60000006, "Science", 40000, "SatouRin");
INSERT INTO attendances (id, lecture_number, lecture_name, user_number, user_name) VALUES (43,70000007, "Art", 40000, "SatouRin");
INSERT INTO attendances (id, lecture_number, lecture_name, user_number, user_name) VALUES (44,80000008, "Music", 40000, "SatouRin");
INSERT INTO attendances (id, lecture_number, lecture_name, user_number, user_name) VALUES (45,90000009, "Physical_education", 40000, "SatouRin");
INSERT INTO attendances (id, lecture_number, lecture_name, user_number, user_name) VALUES (46,10000010, "Special_activities", 40000, "SatouRin");
INSERT INTO attendances (id, lecture_number, lecture_name, user_number, user_name) VALUES (47,11000011, "Period_for_integrated_study", 40000, "SatouRin");
INSERT INTO attendances (id, lecture_number, lecture_name, user_number, user_name) VALUES (48,12000012, "Health", 40000, "SatouRin");

INSERT INTO attendances (id, lecture_number, lecture_name, user_number, user_name) VALUES (49,10000001, "Japanese", 50000, "HakaseTarou");
INSERT INTO attendances (id, lecture_number, lecture_name, user_number, user_name) VALUES (50,20000002, "Engilsh", 50000, "HakaseTarou");
INSERT INTO attendances (id, lecture_number, lecture_name, user_number, user_name) VALUES (51,30000003, "Math", 50000, "HakaseTarou");
INSERT INTO attendances (id, lecture_number, lecture_name, user_number, user_name) VALUES (52,40000004, "Social_studies", 50000, "HakaseTarou");
INSERT INTO attendances (id, lecture_number, lecture_name, user_number, user_name) VALUES (53,50000005, "Politics_and_economics", 50000, "HakaseTarou");
INSERT INTO attendances (id, lecture_number, lecture_name, user_number, user_name) VALUES (54,60000006, "Science", 50000, "HakaseTarou");
INSERT INTO attendances (id, lecture_number, lecture_name, user_number, user_name) VALUES (55,70000007, "Art", 50000, "HakaseTarou");
INSERT INTO attendances (id, lecture_number, lecture_name, user_number, user_name) VALUES (56,80000008, "Music", 50000, "HakaseTarou");
INSERT INTO attendances (id, lecture_number, lecture_name, user_number, user_name) VALUES (57,90000009, "Physical_education", 50000, "HakaseTarou");
INSERT INTO attendances (id, lecture_number, lecture_name, user_number, user_name) VALUES (58,10000010, "Special_activities", 50000, "HakaseTarou");
INSERT INTO attendances (id, lecture_number, lecture_name, user_number, user_name) VALUES (59,11000011, "Period_for_integrated_study", 50000, "HakaseTarou");
INSERT INTO attendances (id, lecture_number, lecture_name, user_number, user_name) VALUES (60,12000012, "Health", 50000, "HakaseTarou");


