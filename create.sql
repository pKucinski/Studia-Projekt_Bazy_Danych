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
