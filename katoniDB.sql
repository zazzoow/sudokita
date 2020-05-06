CREATE DATABASE sudokita;

USE sudokita

CREATE TABLE comics(
       id INT NOT NULL AUTO_INCREMENT,
       name VARCHAR(255),
       added DATE,
       PRIMARY KEY (id)
);

INSERT INTO comics(id,name,added) VALUES(1,'/sudokita/katoni/visionary01_sep_comicrepublic_2017.pdf',NOW());
INSERT INTO comics(id,name,added) VALUES(2,'/sudokita/katoni/UHURU_LEGEND_OF_THE_WIND_RIDERS_#1_RESURGENCE_PT_ONE_JAN_2016.pdf',NOW());
INSERT INTO comics(id,name,added) VALUES(3,'/sudokita/katoni/AJE#1 2015.pdf',NOW());
INSERT INTO comics(id,name,added) VALUES(4,'/sudokita/katoni/Avonome #01.pdf',NOW());
INSERT INTO comics(id,name,added) VALUES(5,'/sudokita/katoni/BEATZ_1_2017_MARCH_COMIC_REPUBLIC.pdf',NOW());
INSERT INTO comics(id,name,added) VALUES(6,'/sudokita/katoni/HERO GENERATION- extreme measures 01__ 2013__4 covers_ComicRepublic.pdf',NOW());
INSERT INTO comics(id,name,added) VALUES(7,'/sudokita/katoni/Hero Kekere #1 May 2016.pdf',NOW());
INSERT INTO comics(id,name,added) VALUES(8,'/sudokita/katoni/IRETI-01.pdf',NOW());
INSERT INTO comics(id,name,added) VALUES(9,'/sudokita/katoni/Ireti Bidemi Comic Republic 01 2016.pdf',NOW());
INSERT INTO comics(id,name,added) VALUES(10,'/sudokita/katoni/Metala_The_13th_01.pdf',NOW());
INSERT INTO comics(id,name,added) VALUES(11,'/sudokita/katoni/Might of Guardian Prime #1.pdf',NOW());
INSERT INTO comics(id,name,added) VALUES(12,'/sudokita/katoni/Scion_Immortal_NOV_2016.pdf',NOW());

CREATE TABLE image (
  id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(255),
  added datetime,
  PRIMARY KEY (id)
);

INSERT INTO comics(id,name,added) VALUES(13,'/sudokita/image/51kiVmDxVWL._SX348_BO1,204,203,200_.jpg',NOW());
INSERT INTO comics(id,name,added) VALUES(14,'/sudokita/image/image-04.jpg',NOW());
-- INSERT INTO comics(id,name,added) VALUES(1,,NOW());
-- INSERT INTO comics(id,name,added) VALUES(1,,NOW());
-- INSERT INTO comics(id,name,added) VALUES(1,,NOW());
-- INSERT INTO comics(id,name,added) VALUES(1,,NOW());
-- INSERT INTO comics(id,name,added) VALUES(1,,NOW());
-- INSERT INTO comics(id,name,added) VALUES(1,,NOW());
-- INSERT INTO comics(id,name,added) VALUES(1,,NOW());
-- INSERT INTO comics(id,name,added) VALUES(1,,NOW());
-- INSERT INTO comics(id,name,added) VALUES(1,,NOW());
-- INSERT INTO comics(id,name,added) VALUES(1,,NOW());
