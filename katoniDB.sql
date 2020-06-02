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
INSERT INTO comics(url,name,added) VALUES('/home/adam/sites/sudokita/katoni/HERO_GENERATION_extreme_measures.pdf','HERO GENERATION-T01',NOW());
INSERT INTO comics(url,name,added) VALUES('/sudokita/katoni/Hero_Kekere_01_May_2016.pdf','HeroKekere-T01',NOW());
INSERT INTO comics(url,name,added) VALUES('/sudokita/katoni/Ireti_Bidemi_Comic_Republic.pdf','IRETI-T01',NOW());
INSERT INTO comics(url,name,added) VALUES('/sudokita/katoni/Metala_The_13th_01.pdf','Metala-T01',NOW());
INSERT INTO comics(url,name,added) VALUES('/sudokita/katoni/Might_of_Guardian_Prime_01.pdf','Might of Guardian Prime-T01',NOW());
INSERT INTO comics(url,name,added) VALUES('/sudokita/katoni/Scion_Immortal_NOV_2016.pdf','Scion Immortal-T01',NOW());
INSERT INTO comics(url,name,added) VALUES('/sudokita/katoni/ERU#1_fear_in_the_dark_#01.pdf','ERU-T01',NOW());

CREATE TABLE image (
  id INT NOT NULL AUTO_INCREMENT,
  url VARCHAR(255),
  name VARCHAR(255),
  description VARCHAR(300),
  added datetime,
  PRIMARY KEY (id)
);

INSERT INTO image(url,name,added) VALUES('/sudokita/image/visionary01_sep_comicrepublic_2017-page-001.jpg','visionary-T01',NOW());
INSERT INTO image(url,name,added) VALUES('/sudokita/image/UHURU_LEGEND_OF_THE_WIND_RIDERS_-01.jpg','uhuru-T01',NOW());
INSERT INTO image(url,name,added) VALUES('/sudokita/image/AJE01.2015-page-001.jpg','AJE-T01',NOW());
INSERT INTO image(url,name,added) VALUES('/sudokita/image/Avonome01-page-001.jpg','Avonome-T01',NOW());
INSERT INTO image(url,name,added) VALUES('/sudokita/image/BEATZ_1_2017_MARCH_COMIC_REPUBLIC-01.jpg','BEATZ-T01',NOW());
INSERT INTO image(url,name,added) VALUES('/sudokita/image/HERO_GENERATION_extreme_measures-page-001.jpg','HERO GENERATION-T01',NOW());
INSERT INTO image(url,name,added) VALUES('/sudokita/image/Hero_Kekere_01_May_2016-01.jpg','HeroKekere-T01',NOW());
INSERT INTO image(url,name,added) VALUES('/sudokita/image/Ireti_Bidemi_Comic_Republic-page-001.jpg','IRETI-T01',NOW());
INSERT INTO image(url,name,added) VALUES('/sudokita/image/Metala_The_13th_01-page-001.jpg','Metala-T01',NOW());
INSERT INTO image(url,name,added) VALUES('/sudokita/image/Might_of_Guardian_Prime_01_page-0001.jpg','Might of Guardian Prime-T01',NOW());
INSERT INTO image(url,name,added) VALUES('/sudokita/image/Scion_Immortal_NOV_2016-01.jpg','Scion Immortal-T01',NOW());
INSERT INTO image(url,name,added) VALUES('/sudokita/image/ERU01.jpg','ERU-T01',NOW());



CREATE TABLE link (
  id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(255),
  url VARCHAR(255),
  added datetime,
  PRIMARY KEY (id)
);

CREATE TABLE description (
 id INT NOT NULL AUTO_INCREMENT,
 name VARCHAR(255),
 synopsis VARCHAR(1200),
 added datetime,
 PRIMARY KEY (id)
);

INSERT INTO description(synopsis,name,added) VALUES("La chasse a commencé.'Lorsque vous cherchez ce qui se cache derrière l'innocence. La fragilité. Et la beauté ... à laquelle de nos sens pouvons-nous vraiment faire confiance?' Des thèmes de foi et de folie tourbillonnent autour de l'histoire d'AJe- dans le passé et dans le présent.",'AJE-T01',NOW());

INSERT INTO description(synopsis,name,added) VALUES("Avonome est l'histoire d'Hilda Avonomemi Moses, née en 1937, dans le village isolé d'Etunor, une colonie d'Ighara, dans l'État d'Edo. Elle disparaît sans laisser de trace pour réapparaître dans un cimetière ces derniers temps, toujours inchangée, sans aucun souvenir de qui elle était ni de l'endroit où elle avait été pendant tout ce temps, à l'exception de la connaissance de son nom, d'une mystérieuse compagnie et d'un cadeau incroyable - la capacité à voir les esprits ...",'Avonome-T01',NOW());

INSERT INTO description(synopsis,name,added) VALUES("DJ Sose est Beatz !. Né avec une maladie rare, Synesthesia qui favorise la vision du son comme des couleurs. Le pouvoir le retrouve plus tard, lui accordant la possibilité de faire la différence. Sose choisit d'utiliser ses pouvoirs pour empêcher les intimidateurs de croire qu'il n'est pas un héros et de ne souhaiter aucune distinction. Suivez son voyage alors qu'il combat les brutes que aucune loi ne peut toucher. Ce n'est pas un héros, il n'aime pas les brutes. C'est Beatz.",'BEATZ-T01',NOW());

INSERT INTO description(synopsis,name,added) VALUES("Eric Kukoyi n'est pas un homme normal. Il ne vieillit pas et ne dort pas. Il enseigne à l'Université de Lagos, également doublé en tant que psychiatre et parapsychologue à temps partiel. Lorsque la nuit se lève, où les créatures hantent les coins et que le crime se dresse, il devient la seule chose que l'un d'eux craindra jamais, il devient la peur elle-même. Lié par serment pour hanter la nuit comme une force de rétribution. Les habitants de cette ville l'ont appelé de nombreux noms, mais l'un fait écho au plus fort ... ERU se craint, marche parmi nous.",'ERU-T01',NOW());

INSERT INTO description(synopsis,name,added) VALUES("Il y a plusieurs décennies dans le royaume Yoruba, l'accord d'un roi désespéré avec une divinité entraîne la naissance d'un enfant, Ireti. L'enfant devient une puissante guerrière avec des pouvoirs qui dépassent largement les hommes normaux; mener des armées au combat, conquérir des royaumes et protéger son peuple. Son histoire n'est pas racontée sans le cœur pour être estomaqué, sa légende n'est pas portée par des lâches et sa puissance est une question que personne n'ose imaginer .",'IRETI-T01',NOW());

INSERT INTO description(synopsis,name,added) VALUES("Je suis Metalla (le 13)… Ce monde est rempli de victimes et de malfrats. Ils s'en tirent avec la cicatrisation d'innocents, leurs actions, un rappel constant de l'injustice dans ce monde. Les victimes doivent affronter leur vie en sachant très bien qu'elles n'obtiendront jamais l'équité. Trop c'est trop. Mon but est d'offrir un choix aux victimes. Faire savoir aux fautes que, en chacun de nous, réside le pouvoir d'agir contre l'iniquité. Ce n'est pas mon histoire, c'est notre histoire. Que se passe-t-il lorsqu'un groupe de jeunes Nigérians se réunit pour une cause commune? La justice d'abord… sinon la vengeance suffira.",'Metala-T01',NOW());

INSERT INTO description(synopsis,name,added) VALUES("nde Jaiye est le cinquième élément, l'un des cinq éléments essentiels sur terre (terre, air, eau, feu et homme). Il est l'homme parfait créé comme Dieu voulait que l'homme soit (à son image). Il peut faire tout ce qu'un homme normal ne peut faire, jusqu'à des niveaux presque divins. Il est le gardien né de la race humaine, comme il est de coutume tous les 2000 ans. Il est nigérian. Il est Guardian Prime",'Might of Guardian Prime-T0',NOW());

INSERT INTO description(synopsis,name,added) VALUES("Alaric est un guerrier immortel sans peur d'une ancienne race connue sous le nom de vivaces. Il croit que l'équilibre doit être maintenu pour la croissance et la stabilité de la société. Se bat pour la justice et croit que les plus hauts sommets peuvent être atteints si les vivaces et les humains coexistent sur un pied d'égalité. Il se bat dans le style de Mgba qui dépend fortement de l'énergie et de la force physiques ainsi que des muscles du corps. Dans les temps modernes de Lagos, il possède et dirige une salle de gym en tant qu'instructeur de fitness. Même avec ses pouvoirs, Alaric ne les opprime jamais mais défend plutôt les faibles qui ne peuvent pas se protéger.",'Scion Immortal-T01',NOW());

INSERT INTO description(synopsis,name,added) VALUES("Sango est un dieu fougueux, fier et débridé. Résidant dans le vide éternel de Koso, sa quête pour venger sa famille brûle comme une flamme éternelle. Sango est un dieu incomparable auquel les éléments eux-mêmes rendent hommage. Ses familiers sont Ara (foudre), Ina (feu), Iji (tempêtes) et Monomono (tonnerre). Son arme divine est Ose, qui est fusionnée avec Ara lors d'un bouleversement inconnu. Sango n'est ni de la lumière ni des ténèbres… marchant seul sur la route de l'éclair… ni à la recherche de la paix ni à fuir la confrontation. Son seul désir étant sa victoire complète.",'visionary-T01',NOW());

INSERT INTO description(synopsis,name,added) VALUES("Hero generation raconte l'histoire des Extrêmes, un groupe de super-héros underground composé d'individus super puissants que le monde n'a pas encore connus. Unis par un passé caché et une cause commune, ils luttent pour la sécurité de la ville et de ceux qu'ils aiment ...",'HERO GENERATION-T01',NOW());


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
