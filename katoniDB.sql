CREATE DATABASE sudokita;

USE sudokita

CREATE TABLE comics(
       id INT NOT NULL AUTO_INCREMENT,
       url VARCHAR(255),
       name VARCHAR(255),
       added DATE,
       PRIMARY KEY (id)
);

INSERT INTO comics(url,name,added) VALUES('/sudokita/katoni/visionary01_sep_comicrepublic_2017.pdf','visionary-T01',NOW());
INSERT INTO comics(url,name,added) VALUES('/sudokita/katoni/UHURU_LEGEND_OF_THE_WIND_RIDERS_.pdf','uhuru-T01',NOW());
INSERT INTO comics(url,name,added) VALUES('/sudokita/katoni/AJE01.2015.pdf','AJE-T01',NOW());
INSERT INTO comics(url,name,added) VALUES('/sudokita/katoni/Avonome01.pdf','Avonome-T01',NOW());
INSERT INTO comics(url,name,added) VALUES('/sudokita/katoni/BEATZ_1_2017_MARCH_COMIC_REPUBLIC.pdf','BEATZ-T01',NOW());
INSERT INTO comics(url,name,added) VALUES('/home/adam/sites/sudokita/katoni/HERO_GENERATION_extreme_measures.pdf','HERO_GENERATION-T01',NOW());
INSERT INTO comics(url,name,added) VALUES('/sudokita/katoni/Hero_Kekere_01_May_2016.pdf','HeroKekere-T01',NOW());
INSERT INTO comics(url,name,added) VALUES('/sudokita/katoni/IRETI-01.pdf','IRETI-TO1',NOW());
INSERT INTO comics(url,name,added) VALUES('/sudokita/katoni/Ireti_Bidemi_Comic_Republic.pdf','IRETI-T01',NOW());
INSERT INTO comics(url,name,added) VALUES('/sudokita/katoni/Metala_The_13th_01.pdf','Metala-T01',NOW());
INSERT INTO comics(url,name,added) VALUES('/sudokita/katoni/Might_of_Guardian_Prime_01.pdf','Might-T01',NOW());
INSERT INTO comics(url,name,added) VALUES('/sudokita/katoni/Scion_Immortal_NOV_2016.pdf','Scion Immortal-T01',NOW());

CREATE TABLE image (
  id INT NOT NULL AUTO_INCREMENT,
  url VARCHAR(255),
  name VARCHAR(255),
  description VARCHAR(300),
  added datetime,
  PRIMARY KEY (id)
);

INSERT INTO image(url,name,description,added) VALUES('/sudokita/image/visionary01.jpg','visionary-T01','quoque tempera catilina patientia nostra quam du etiam nos eludete dued at finem cesse effrenatta nihilnette dominus domine dominum domini domino',NOW());
INSERT INTO image(url,name,description,added) VALUES('/sudokita/image/sans.jpeg','sans','quoque tempera catilina patientia nostra quam du etiam nos eludete dued at finem cesse effrenatta nihilnette dominus domine dominum domini domino',NOW());
INSERT INTO image(url,name,description,added) VALUES('/sudokita/image/149Dragonite.png','dracolosse','quoque tempera catilina patientia nostra quam du etiam nos eludete dued at finem cesse effrenatta nihilnette dominus domine dominum domini domino',NOW());
INSERT INTO image(url,name,description,added) VALUES('/sudokita/image/51kiVmDxVWL._SX348_BO1,204,203,200_.jpg','aurion\ 1','quoque tempera catilina patientia nostra quam du etiam nos eludete dued at finem cesse effrenatta nihilnette dominus domine dominum domini domino',NOW());
INSERT INTO image(url,name,description,added) VALUES('/sudokita/image/image-04.jpg','aurion02','quoque tempera catilina patientia nostra quam du etiam nos eludete dued at finem cesse effrenatta nihilnette dominus domine dominum domini domino',NOW());
INSERT INTO image(url,name,description,added) VALUES('/sudokita/image/Papyrus1.PNG.png','Papyrus','quoque tempera catilina patientia nostra quam du etiam nos eludete dued at finem cesse effrenatta nihilnette dominus domine dominum domini domino',NOW());
INSERT INTO image(url,name,description,added) VALUES('/sudokita/image/Toriel_battle.png','toriel','quoque tempera catilina patientia nostra quam du etiam nos eludete dued at finem cesse effrenatta nihilnette dominus domine dominum domini domino',NOW());
INSERT INTO image(url,name,description,added) VALUES('/sudokita/image/Undyne.gif','undyne','quoque tempera catilina patientia nostra quam du etiam nos eludete dued at finem cesse effrenatta nihilnette dominus domine dominum domini domino',NOW());
INSERT INTO image(url,name,description,added) VALUES('/sudokita/image/charizard.jpg','charizard','quoque tempera catilina patientia nostra quam du etiam nos eludete dued at finem cesse effrenatta nihilnette dominus domine dominum domini domino',NOW());
INSERT INTO image(url,name,description,added) VALUES('/sudokita/image/f519914cf3a39ab057d3d31f09f98548.png','venosaur','quoque tempera catilina patientia nostra quam du etiam nos eludete dued at finem cesse effrenatta nihilnette dominus domine dominum domini domino',NOW());
INSERT INTO image(url,name,description,added) VALUES('/sudokita/image/téléchargement.png','blastoise','quoque tempera catilina patientia nostra quam du etiam nos eludete dued at finem cesse effrenatta nihilnette dominus domine dominum domini domino',NOW());
INSERT INTO image(url,name,description,added) VALUES('/sudokita/image/250px-Pikachu-RFVF.png','pikachu','quoque tempera catilina patientia nostra quam du etiam nos eludete dued at finem cesse effrenatta nihilnette dominus domine dominum domini domino',NOW());
INSERT INTO image(url,name,description,added) VALUES('/sudokita/image/31-310608_png-old-ken-sugimori-art.png','piaf','quoque tempera catilina patientia nostra quam du etiam nos eludete dued at finem cesse effrenatta nihilnette dominus domine dominum domini domino',NOW());
INSERT INTO image(url,name,description,added) VALUES('/sudokita/image/kindpng_309747.png','polywarth','quoque tempera catilina patientia nostra quam du etiam nos eludete dued at finem cesse effrenatta nihilnette dominus domine dominum domini domino',NOW());
INSERT INTO image(url,name,description,added) VALUES('/sudokita/image/221-2211776_alakazam-from-the-official-artwork-set-for-pokemon.png','alakazam','quoque tempera catilina patientia nostra quam du etiam nos eludete dued at finem cesse effrenatta nihilnette dominus domine dominum domini domino',NOW());
INSERT INTO image(url,name,description,added) VALUES('/sudokita/image/images(2).jpeg','ho-oh','quoque tempera catilina patientia nostra quam du etiam nos eludete dued at finem cesse effrenatta nihilnette dominus domine dominum domini domino',NOW());
INSERT INTO image(url,name,description,added) VALUES('/sudokita/image/images\ (1).jpeg','mega\ charizard','quoque tempera catilina patientia nostra quam du etiam nos eludete dued at finem cesse effrenatta nihilnette dominus domine dominum domini domino',NOW());
INSERT INTO image(url,name,description,added) VALUES('/sudokita/image/images.jpeg','mew','quoque tempera catilina patientia nostra quam du etiam nos eludete dued at finem cesse effrenatta nihilnette dominus domine dominum domini domino',NOW());
INSERT INTO image(url,name,description,added) VALUES('/sudokita/image/images\ (3).jpeg','typhlosion','quoque tempera catilina patientia nostra quam du etiam nos eludete dued at finem cesse effrenatta nihilnette dominus domine dominum domini domino',NOW());
INSERT INTO image(url,name,description,added) VALUES('/sudokita/image/9623d10530c3827078cb4347211961d667a11c83_hq.jpg','pyrax','quoque tempera catilina patientia nostra quam du etiam nos eludete dued at finem cesse effrenatta nihilnette dominus domine dominum domini domino',NOW());
INSERT INTO image(url,name,description,added) VALUES('/sudokita/image/1370717056586.jpg','crocorible','quoque tempera catilina patientia nostra quam du etiam nos eludete dued at finem cesse effrenatta nihilnette dominus domine dominum domini domino',NOW());
INSERT INTO image(url,name,description,added) VALUES('/sudokita/image/tumblr_mti1sjtmB91qk43wto1_r1_500.png','gengar','quoque tempera catilina patientia nostra quam du etiam nos eludete dued at finem cesse effrenatta nihilnette dominus domine dominum domini domino',NOW());


CREATE TABLE link (
  id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(255),
  url VARCHAR(255),
  added datetime,
  PRIMARY KEY (id)
);

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

-- CREATE DATABASE prestashop COLLATE utf8mb4_general_ci;
--
-- GRANT ALL PRIVILEGES ON prestashop.* TO 'phpmyadmin'@'localhost' WITH GRANT OPTION;
--
-- FLUSH PRIVILEGES;
