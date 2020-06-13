CREATE TABLE krolestwo
  (
     id       INT NOT NULL UNIQUE,
     nazwa    VARCHAR(255) NOT NULL,
     krol     VARCHAR(255) NOT NULL,
     nastepca VARCHAR(255),
     CONSTRAINT krolestwo_pk PRIMARY KEY (id)
  );

CREATE TABLE zamek
  (
     id           INT NOT NULL UNIQUE,
     nazwa        VARCHAR(255) NOT NULL,
     zloto        INT NOT NULL,
     drewno       INT NOT NULL,
     krolestwo_id INT NOT NULL,
     CONSTRAINT zamek_pk PRIMARY KEY (id),
     FOREIGN KEY (krolestwo_id) REFERENCES krolestwo(id) ON DELETE CASCADE
  );

CREATE TABLE kopalnia_zlota
  (
     id       INT NOT NULL UNIQUE,
     nazwa    VARCHAR(255) NOT NULL,
     zamek_id INT,
     CONSTRAINT kopalnia_zlota_pk PRIMARY KEY (id),
     FOREIGN KEY (zamek_id) REFERENCES zamek(id) ON DELETE CASCADE
  );

CREATE TABLE tartak
  (
     id       INT NOT NULL UNIQUE,
     nazwa    VARCHAR(255) NOT NULL,
     zamek_id INT,
     CONSTRAINT tartak_pk PRIMARY KEY (id),
     FOREIGN KEY (zamek_id) REFERENCES zamek(id) ON DELETE CASCADE
  );

CREATE TABLE potwory
  (
     id     INT NOT NULL UNIQUE,
     zycie  INT NOT NULL,
     atak   INT NOT NULL,
     obrona INT NOT NULL,
     CONSTRAINT potwory_pk PRIMARY KEY (id)
  );

CREATE TABLE krolestwo_potwory
  (
     krolestwo_id INT NOT NULL,
     powtowry_id  INT NOT NULL,
     PRIMARY KEY (krolestwo_id, powtowry_id),
     FOREIGN KEY (krolestwo_id) REFERENCES krolestwo(id) ON UPDATE CASCADE,
     FOREIGN KEY (powtowry_id) REFERENCES potwory(id) ON UPDATE CASCADE
  );

CREATE TABLE rycerz
  (
     id           INT NOT NULL UNIQUE,
     nazwa        VARCHAR(255) NOT NULL,
     atak         INT NOT NULL,
     obrona       INT NOT NULL,
     zycie        INT NOT NULL,
     krolestwo_id INT NOT NULL,
     zamek_id     INT NOT NULL,
     CONSTRAINT rycerz_pk PRIMARY KEY (id),
     FOREIGN KEY (zamek_id) REFERENCES zamek(id) ON DELETE CASCADE,
     FOREIGN KEY (krolestwo_id) REFERENCES krolestwo(id) ON DELETE CASCADE
  );

CREATE TABLE umiejetnosc_specjalna
  (
     id                  INT NOT NULL UNIQUE,
     dodatkowe_obrazenia INT NOT NULL,
     czas_odnowienia     INT NOT NULL,
     CONSTRAINT umiejetnosc_specjalna_pk PRIMARY KEY (id),
     CONSTRAINT fk_rycerz_id FOREIGN KEY (id) REFERENCES rycerz (id)
  );
