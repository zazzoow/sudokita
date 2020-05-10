CREATE DATABASE sudokita;

USE sudokita

CREATE TABLE comics(
       id INT NOT NULL AUTO_INCREMENT,
       name VARCHAR(255),
       added DATE,
       PRIMARY KEY (id)
);

INSERT INTO comics(name,added) VALUES('/sudokita/katoni/visionary01_sep_comicrepublic_2017.pdf',NOW());
INSERT INTO comics(name,added) VALUES('/sudokita/katoni/UHURU_LEGEND_OF_THE_WIND_RIDERS_.pdf',NOW());
INSERT INTO comics(name,added) VALUES('/sudokita/katoni/AJE01.2015.pdf',NOW());
INSERT INTO comics(name,added) VALUES('/sudokita/katoni/Avonome01.pdf',NOW());
INSERT INTO comics(name,added) VALUES('/sudokita/katoni/BEATZ_1_2017_MARCH_COMIC_REPUBLIC.pdf',NOW());
INSERT INTO comics(name,added) VALUES('/home/adam/sites/sudokita/katoni/HERO_GENERATION_extreme_measures.pdf',NOW());
INSERT INTO comics(name,added) VALUES('/sudokita/katoni/Hero_Kekere_01_May_2016.pdf',NOW());
INSERT INTO comics(name,added) VALUES('/sudokita/katoni/IRETI-01.pdf',NOW());
INSERT INTO comics(name,added) VALUES('/sudokita/katoni/Ireti_Bidemi_Comic_Republic.pdf',NOW());
INSERT INTO comics(name,added) VALUES('/sudokita/katoni/Metala_The_13th_01.pdf',NOW());
INSERT INTO comics(name,added) VALUES('/sudokita/katoni/Might_of_Guardian_Prime_01.pdf',NOW());
INSERT INTO comics(name,added) VALUES('/sudokita/katoni/Scion_Immortal_NOV_2016.pdf',NOW());

CREATE TABLE image (
  id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(255),
  added datetime,
  PRIMARY KEY (id)
);

INSERT INTO image(name,added) VALUES('/sudokita/image/51kiVmDxVWL._SX348_BO1,204,203,200_.jpg',NOW());
INSERT INTO image(name,added) VALUES('/sudokita/image/image-04.jpg',NOW());
INSERT INTO image(name,added) VALUES('/sudokita/image/Papyrus1.PNG.png',NOW());
INSERT INTO image(name,added) VALUES('/sudokita/image/Toriel_battle.png',NOW());
INSERT INTO image(name,added) VALUES('/sudokita/image/Undyne.gif',NOW());
-- INSERT INTO comics(id,name,added) VALUES(1,,NOW());
-- INSERT INTO comics(id,name,added) VALUES(1,,NOW());
-- INSERT INTO comics(id,name,added) VALUES(1,,NOW());
-- INSERT INTO comics(id,name,added) VALUES(1,,NOW());
-- INSERT INTO comics(id,name,added) VALUES(1,,NOW());
-- INSERT INTO comics(id,name,added) VALUES(1,,NOW());
-- INSERT INTO comics(id,name,added) VALUES(1,,NOW());


CREATE TABLE user (
  id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(255),
  firstname VARCHAR(255),
  phoneNUM VARCHAR(255),
  email VARCHAR(255),
  subject VARCHAR (255),
  message VARCHAR (500),
  added datetime,
  PRIMARY KEY (id)
);
