INSERT INTO Krolestwo (id, Nazwa, Krol, Nastepca) VALUES (0, 'Aibaneian Dynasty', 'Król Hernais I', 'Hernais II');
INSERT INTO Krolestwo (id, Nazwa, Krol, Nastepca) VALUES (1, 'Brarid Empire', 'Guerart VI', NULL);
INSERT INTO Krolestwo (id, Nazwa, Krol, Nastepca) VALUES (2, 'Pribridal Empire',' Ansgot II', 'Alesone I');

INSERT INTO Zamek (id, Nazwa, Zloto, Drewno, Krolestwo_id) VALUES (0, 'Cainfield', 350, 150, 2);
INSERT INTO Zamek (id, Nazwa, Zloto, Drewno, Krolestwo_id) VALUES (1, 'Cainfield', 100, 400, 1);
INSERT INTO Zamek (id, Nazwa, Zloto, Drewno, Krolestwo_id) VALUES (2, 'Hartlon', 600, 250, 0);
INSERT INTO Zamek (id, Nazwa, Zloto, Drewno, Krolestwo_id) VALUES (3, 'Barncowl', 50, 100, 2);
INSERT INTO Zamek (id, Nazwa, Zloto, Drewno, Krolestwo_id) VALUES (5, 'Pardwell', 600, 150, 0);
INSERT INTO Zamek (id, Nazwa, Zloto, Drewno, Krolestwo_id) VALUES (4, 'Chilgrave',  900, 650, 1);
INSERT INTO Zamek (id, Nazwa, Zloto, Drewno, Krolestwo_id) VALUES (6, 'Redford', 550, 400, 1);
INSERT INTO Zamek (id, Nazwa, Zloto, Drewno, Krolestwo_id) VALUES (7, 'Khurleigh', 400, 800, 2);

INSERT INTO Kopalnia_Zlota (id, Nazwa, Zamek_id) VALUES (0, 'The Whelming Overhang', 1);
INSERT INTO Kopalnia_Zlota (id, Nazwa, Zamek_id) VALUES (1, 'The Northern Hole', 2);
INSERT INTO Kopalnia_Zlota (id, Nazwa, Zamek_id) VALUES (2, 'The Terrestrial Hideout', 1);
INSERT INTO Kopalnia_Zlota (id, Nazwa, Zamek_id) VALUES (3, 'The Boundless Chasms', NULL);
INSERT INTO Kopalnia_Zlota (id, Nazwa, Zamek_id) VALUES (4, 'Shrewbury Grotto', 7);
INSERT INTO Kopalnia_Zlota (id, Nazwa, Zamek_id) VALUES (5, 'Trenet Subterrane', 6);
INSERT INTO Kopalnia_Zlota (id, Nazwa, Zamek_id) VALUES (6, 'Chamcoln Overhang', 4);
INSERT INTO Kopalnia_Zlota (id, Nazwa, Zamek_id) VALUES (7, 'Petromeuse Hideout', NULL);
INSERT INTO Kopalnia_Zlota (id, Nazwa, Zamek_id) VALUES (8, 'Newingrial Hollow', 4);
INSERT INTO Kopalnia_Zlota (id, Nazwa, Zamek_id) VALUES (9, 'The Yelling Hole', 2);
INSERT INTO Kopalnia_Zlota (id, Nazwa, Zamek_id) VALUES (10, 'The Gargantuan Hollow', 6);
INSERT INTO Kopalnia_Zlota (id, Nazwa, Zamek_id) VALUES (11, 'Oxmark Hollow', 0);
INSERT INTO Kopalnia_Zlota (id, Nazwa, Zamek_id) VALUES (12, 'Chawall Caverns', 1);

INSERT INTO Tartak (id, Nazwa, Zamek_id) VALUES (0, 'Jagged Grove', 6);
INSERT INTO Tartak (id, Nazwa, Zamek_id) VALUES (1, 'Nostalgic Butternut Grove', NULL);
INSERT INTO Tartak (id, Nazwa, Zamek_id) VALUES (2, 'Exclusive Woods', 3);
INSERT INTO Tartak (id, Nazwa, Zamek_id) VALUES (3, 'Grassland Cat Wood', 6);
INSERT INTO Tartak (id, Nazwa, Zamek_id) VALUES (4, 'Hadthon Grove', 1);
INSERT INTO Tartak (id, Nazwa, Zamek_id) VALUES (5, 'Speckled Badger Wood', 7);
INSERT INTO Tartak (id, Nazwa, Zamek_id) VALUES (6, 'Latchliers Covert', 4);
INSERT INTO Tartak (id, Nazwa, Zamek_id) VALUES (7, 'Cliffnora Covert', 2);
INSERT INTO Tartak (id, Nazwa, Zamek_id) VALUES (8, 'Wise Grove', 2);
INSERT INTO Tartak (id, Nazwa, Zamek_id) VALUES (9, 'Farmingtara Woods', NULL);
INSERT INTO Tartak (id, Nazwa, Zamek_id) VALUES (10, 'Leset Covert', 3);
INSERT INTO Tartak (id, Nazwa, Zamek_id) VALUES (11, 'Wild Magnolia Timberland', NULL);
INSERT INTO Tartak (id, Nazwa, Zamek_id) VALUES (12, 'Jaded Woods', 7);
INSERT INTO Tartak (id, Nazwa, Zamek_id) VALUES (13, 'Frightening Timberland', 4);
INSERT INTO Tartak (id, Nazwa, Zamek_id) VALUES (14, 'Striped Hawk Woods', 3);
INSERT INTO Tartak (id, Nazwa, Zamek_id) VALUES (15, 'Marlbo Grove', 5);

INSERT INTO Rycerze (id, Nazwa, Atak, Obrona, Zycie, Krolestwo_id, Zamek_id) VALUES (0, 'Aymon of the Nightfall', 12, 10, 150, 2, 3);
INSERT INTO Rycerze (id, Nazwa, Atak, Obrona, Zycie, Krolestwo_id, Zamek_id) VALUES (1, 'Guiart the Unbreakable', 11, 12, 150, 0, 5);
INSERT INTO Rycerze (id, Nazwa, Atak, Obrona, Zycie, Krolestwo_id, Zamek_id) VALUES (2, 'Guibert the Demon',      10, 7, 150, 1, 1);
INSERT INTO Rycerze (id, Nazwa, Atak, Obrona, Zycie, Krolestwo_id, Zamek_id) VALUES (3, 'Ivote the Smile',        13, 9, 150, 0, 5);
INSERT INTO Rycerze (id, Nazwa, Atak, Obrona, Zycie, Krolestwo_id, Zamek_id) VALUES (4, 'Girout the Clumsy',      14, 12, 150, 1, 4);
INSERT INTO Rycerze (id, Nazwa, Atak, Obrona, Zycie, Krolestwo_id, Zamek_id) VALUES (5, 'Watt the Escort',         8, 8, 150, 2, 7);
INSERT INTO Rycerze (id, Nazwa, Atak, Obrona, Zycie, Krolestwo_id, Zamek_id) VALUES (6, 'Serrell the Warm',       11, 7, 150, 2, 7);
INSERT INTO Rycerze (id, Nazwa, Atak, Obrona, Zycie, Krolestwo_id, Zamek_id) VALUES (7, 'Henricus the Black',     15, 14, 150, 2, 3);
INSERT INTO Rycerze (id, Nazwa, Atak, Obrona, Zycie, Krolestwo_id, Zamek_id) VALUES (8, 'Evrouin the Conqueror',  11, 13, 150, 1, 1);
INSERT INTO Rycerze (id, Nazwa, Atak, Obrona, Zycie, Krolestwo_id, Zamek_id) VALUES (9, 'Conon the Titan',        12, 17, 150, 0, 2);
INSERT INTO Rycerze (id, Nazwa, Atak, Obrona, Zycie, Krolestwo_id, Zamek_id) VALUES (10, 'Wiliame the Persistent', 8, 15, 150, 2, 0);
INSERT INTO Rycerze (id, Nazwa, Atak, Obrona, Zycie, Krolestwo_id, Zamek_id) VALUES (11, 'Henry the Warden',       7, 13, 150, 1, 4);
INSERT INTO Rycerze (id, Nazwa, Atak, Obrona, Zycie, Krolestwo_id, Zamek_id) VALUES (12, 'Huggett the Reckless',  15, 11, 150, 0, 5);
INSERT INTO Rycerze (id, Nazwa, Atak, Obrona, Zycie, Krolestwo_id, Zamek_id) VALUES (13, 'Robin of the Lake',     14, 9, 150, 1, 6);
INSERT INTO Rycerze (id, Nazwa, Atak, Obrona, Zycie, Krolestwo_id, Zamek_id) VALUES (14, 'Robin of the Lake',     12, 9, 150, 2, 0);
INSERT INTO Rycerze (id, Nazwa, Atak, Obrona, Zycie, Krolestwo_id, Zamek_id) VALUES (15, 'Arminel the Brown',     14, 12, 150, 0, 2);
INSERT INTO Rycerze (id, Nazwa, Atak, Obrona, Zycie, Krolestwo_id, Zamek_id) VALUES (16, 'Jake the Highborn',     13, 11, 150, 1, 6);
INSERT INTO Rycerze (id, Nazwa, Atak, Obrona, Zycie, Krolestwo_id, Zamek_id) VALUES (17, 'Wiliame the Bane',       9, 14, 150, 1, 4);
INSERT INTO Rycerze (id, Nazwa, Atak, Obrona, Zycie, Krolestwo_id, Zamek_id) VALUES (18, 'Christian the Romantic',10, 13, 150, 0, 2);
INSERT INTO Rycerze (id, Nazwa, Atak, Obrona, Zycie, Krolestwo_id, Zamek_id) VALUES (19, 'Godefridus of the Sea',  9, 16, 150, 1, 1);
INSERT INTO Rycerze (id, Nazwa, Atak, Obrona, Zycie, Krolestwo_id, Zamek_id) VALUES (20, 'Balin the Conqueror',   12, 12, 150, 2, 7);
INSERT INTO Rycerze (id, Nazwa, Atak, Obrona, Zycie, Krolestwo_id, Zamek_id) VALUES (21, 'Mosseus of the Winter', 13, 11, 150, 1, 6);
INSERT INTO Rycerze (id, Nazwa, Atak, Obrona, Zycie, Krolestwo_id, Zamek_id) VALUES (22, 'Joyce the Bear',        11, 10, 150, 0, 5);
INSERT INTO Rycerze (id, Nazwa, Atak, Obrona, Zycie, Krolestwo_id, Zamek_id) VALUES (23, 'Dickon the Weak',       10, 10, 150, 0, 2);
INSERT INTO Rycerze (id, Nazwa, Atak, Obrona, Zycie, Krolestwo_id, Zamek_id) VALUES (24, 'Giff the Defender',     11, 16, 150, 1, 1);
INSERT INTO Rycerze (id, Nazwa, Atak, Obrona, Zycie, Krolestwo_id, Zamek_id) VALUES (25, 'Girard the Loving',     15, 8, 150, 1, 4);
INSERT INTO Rycerze (id, Nazwa, Atak, Obrona, Zycie, Krolestwo_id, Zamek_id) VALUES (26, 'Amauri of the Ice',     14, 12, 150, 0, 2);
INSERT INTO Rycerze (id, Nazwa, Atak, Obrona, Zycie, Krolestwo_id, Zamek_id) VALUES (27, 'Hawkin the Fearless',   16, 11, 150, 2, 0);

INSERT INTO Umiejetnosc_Specjalna (id, Dodatkowe_Obrazenia, Czas_Odnowienia) VALUES (0, 4, 25);
INSERT INTO Umiejetnosc_Specjalna (id, Dodatkowe_Obrazenia, Czas_Odnowienia) VALUES (1, 6, 20);
INSERT INTO Umiejetnosc_Specjalna (id, Dodatkowe_Obrazenia, Czas_Odnowienia) VALUES (2, 5, 20);
INSERT INTO Umiejetnosc_Specjalna (id, Dodatkowe_Obrazenia, Czas_Odnowienia) VALUES (3, 6, 25);
INSERT INTO Umiejetnosc_Specjalna (id, Dodatkowe_Obrazenia, Czas_Odnowienia) VALUES (4, 4, 25);
INSERT INTO Umiejetnosc_Specjalna (id, Dodatkowe_Obrazenia, Czas_Odnowienia) VALUES (5, 5, 30);
INSERT INTO Umiejetnosc_Specjalna (id, Dodatkowe_Obrazenia, Czas_Odnowienia) VALUES (6, 5, 30);
INSERT INTO Umiejetnosc_Specjalna (id, Dodatkowe_Obrazenia, Czas_Odnowienia) VALUES (7, 12, 50);
INSERT INTO Umiejetnosc_Specjalna (id, Dodatkowe_Obrazenia, Czas_Odnowienia) VALUES (8, 3, 15);
INSERT INTO Umiejetnosc_Specjalna (id, Dodatkowe_Obrazenia, Czas_Odnowienia) VALUES (9, 4, 20);
INSERT INTO Umiejetnosc_Specjalna (id, Dodatkowe_Obrazenia, Czas_Odnowienia) VALUES (10, 10, 45);
INSERT INTO Umiejetnosc_Specjalna (id, Dodatkowe_Obrazenia, Czas_Odnowienia) VALUES (11, 5, 20);
INSERT INTO Umiejetnosc_Specjalna (id, Dodatkowe_Obrazenia, Czas_Odnowienia) VALUES (12, 3, 5);
INSERT INTO Umiejetnosc_Specjalna (id, Dodatkowe_Obrazenia, Czas_Odnowienia) VALUES (13, 3, 15);
INSERT INTO Umiejetnosc_Specjalna (id, Dodatkowe_Obrazenia, Czas_Odnowienia) VALUES (13, 1, 3);
INSERT INTO Umiejetnosc_Specjalna (id, Dodatkowe_Obrazenia, Czas_Odnowienia) VALUES (14, 6, 15);
INSERT INTO Umiejetnosc_Specjalna (id, Dodatkowe_Obrazenia, Czas_Odnowienia) VALUES (15, 8, 15);
INSERT INTO Umiejetnosc_Specjalna (id, Dodatkowe_Obrazenia, Czas_Odnowienia) VALUES (16, 5, 20);
INSERT INTO Umiejetnosc_Specjalna (id, Dodatkowe_Obrazenia, Czas_Odnowienia) VALUES (17, 5, 15);
INSERT INTO Umiejetnosc_Specjalna (id, Dodatkowe_Obrazenia, Czas_Odnowienia) VALUES (18, 10, 50);
INSERT INTO Umiejetnosc_Specjalna (id, Dodatkowe_Obrazenia, Czas_Odnowienia) VALUES (19, 5, 10);
INSERT INTO Umiejetnosc_Specjalna (id, Dodatkowe_Obrazenia, Czas_Odnowienia) VALUES (20, 1, 2);
INSERT INTO Umiejetnosc_Specjalna (id, Dodatkowe_Obrazenia, Czas_Odnowienia) VALUES (21, 3, 10);
INSERT INTO Umiejetnosc_Specjalna (id, Dodatkowe_Obrazenia, Czas_Odnowienia) VALUES (22, 8, 40);
INSERT INTO Umiejetnosc_Specjalna (id, Dodatkowe_Obrazenia, Czas_Odnowienia) VALUES (23, 4, 15);
INSERT INTO Umiejetnosc_Specjalna (id, Dodatkowe_Obrazenia, Czas_Odnowienia) VALUES (24, 7, 25);
INSERT INTO Umiejetnosc_Specjalna (id, Dodatkowe_Obrazenia, Czas_Odnowienia) VALUES (25, 3, 15);
INSERT INTO Umiejetnosc_Specjalna (id, Dodatkowe_Obrazenia, Czas_Odnowienia) VALUES (26, 5, 40);
INSERT INTO Umiejetnosc_Specjalna (id, Dodatkowe_Obrazenia, Czas_Odnowienia) VALUES (27, 13, 60);



CREATE TABLE Krolestwo (
	id int NOT NULL,
	Nazwa varchar(255) NOT NULL,
	Krol varchar(255) NOT NULL,
	Nastepca varchar(255),
	CONSTRAINT Krolestwo_pk PRIMARY KEY (id)
);

CREATE TABLE Zamek (
	id int NOT NULL,
	Nazwa varchar(255) NOT NULL,
	Zloto int NOT NULL,
	Drewno int NOT NULL,
	Krolestwo_id int NOT NULL,
	CONSTRAINT Zamek_pk PRIMARY KEY (id),
	FOREIGN KEY (Krolestwo_id) REFERENCES Krolestwo(id) ON DELETE CASCADE
);


CREATE TABLE Kopalnia_Zlota (
	id int NOT NULL,
	Nazwa varchar(255) NOT NULL,
	Zamek_id int,
	CONSTRAINT kopalnia_zlota_pk PRIMARY KEY (id),
	FOREIGN KEY (Zamek_id) REFERENCES Zamek(id) ON DELETE CASCADE
);



CREATE TABLE Tartak (
	id int NOT NULL,
	Nazwa varchar(255) NOT NULL,
	Zamek_id int,
	CONSTRAINT Tartak_pk PRIMARY KEY (id),
	FOREIGN KEY (Zamek_id) REFERENCES Zamek(id) ON DELETE CASCADE
);



CREATE TABLE Potwory (
	id int NOT NULL,
	Zycie int NOT NULL,
	Atak int NOT NULL,
	Obrona int NOT NULL,
	CONSTRAINT Potwory_pk PRIMARY KEY (id)
);


CREATE TABLE Krolestwo_Potwory (
	Krolestwo_id int NOT NULL,
	Powtowry_id int NOT NULL,
	PRIMARY KEY (Krolestwo_id, Powtowry_id),
	FOREIGN KEY (Krolestwo_id) REFERENCES Krolestwo(id) ON UPDATE CASCADE,
  FOREIGN KEY (Powtowry_id) REFERENCES Potwory(id) ON UPDATE CASCADE
);


CREATE TABLE Rycerze (
	id int NOT NULL,
	Nazwa varchar(255) NOT NULL,
	Atak int NOT NULL,
	Obrona int NOT NULL,
	Zycie int NOT NULL,
	Krolestwo_id int NOT NULL,
	Zamek_id int NOT NULL,
	CONSTRAINT Rycerze_pk PRIMARY KEY (id),
	FOREIGN KEY (Zamek_id) REFERENCES Zamek(id) ON DELETE CASCADE,
	FOREIGN KEY (Krolestwo_id) REFERENCES Krolestwo(id) ON DELETE CASCADE
);



CREATE TABLE Umiejetnosc_Specjalna (
	id int NOT NULL,
	Dodatkowe_Obrazenia int NOT NULL,
	Czas_Odnowienia int NOT NULL,
	CONSTRAINT Umiejetność_Specjalna_pk PRIMARY KEY (id),
	CONSTRAINT fk_rycerz_id FOREIGN KEY (id) REFERENCES Rycerze (id)
);