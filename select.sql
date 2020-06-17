-- Wyświetlenie wszystkich rycerzy i ich pochodzenie
SELECT rycerz.nazwa   AS rycerz,
       zamek.nazwa     AS zamek,
       krolestwo.nazwa AS "królestwo"
FROM   rycerz,
       zamek,
       krolestwo
WHERE  rycerz.zamek_id = zamek.id
       AND krolestwo.id = zamek.krolestwo_id
ORDER  BY zamek.nazwa,
          rycerz.nazwa;

-- Wyświetlenie wszystkich rycerzy posortowanych malejąco atakiem wraz z umiejętnością specjlaną
SELECT rycerz.nazwa                               AS rycerz,
       rycerz.atak                                AS "atak podstawowy",
       umiejetnosc_specjalna.dodatkowe_obrazenia   AS "atak specjalny",
       rycerz.atak
       + umiejetnosc_specjalna.dodatkowe_obrazenia AS "całkowity atak"
FROM   rycerz,
       umiejetnosc_specjalna
WHERE  umiejetnosc_specjalna.id = rycerz.id
ORDER  BY "całkowity atak" DESC;

-- Krolestwa z nastepcami
SELECT krolestwo.nazwa,
       krolestwo.krol,
       krolestwo.nastepca
FROM   krolestwo
WHERE  krolestwo.nastepca IS NOT NULL;

-- Lista zamków oraz do jakiego królestwa należą
SELECT krolestwo.nazwa AS "królestwo",
       zamek.nazwa     AS zamek
FROM   krolestwo
       INNER JOIN zamek
               ON krolestwo.id = zamek.krolestwo_id
ORDER  BY krolestwo.nazwa;

-- Lista zamków Posiadająca ponad 500 jednostek złota
SELECT zamek.nazwa,
       zamek.zloto
FROM   zamek,
       krolestwo
WHERE  zamek.krolestwo_id = krolestwo.id
       AND zamek.zloto > 500;

-- Lista Kopalń z nazwą Hollow, które są przypisane do jakiegoś zamku
SELECT *
FROM   kopalnia_zlota
WHERE  nazwa LIKE '%Hollow'
       AND zamek_id IS NOT NULL;

-- Lista zamków posiadająca Kopalnie Złota
SELECT zamek.id,
       zamek.nazwa
FROM   zamek
WHERE  id IN (SELECT kopalnia_zlota.zamek_id
              FROM   kopalnia_zlota);

-- lista zamkow wraz z iloscia kopalń
SELECT zamek.nazwa     AS zamek,
       krolestwo.nazwa AS krolestwo,
       Count(*)        AS "ile kopalń"
FROM   ( ( zamek
           INNER JOIN kopalnia_zlota
                   ON zamek.id = kopalnia_zlota.zamek_id )
         INNER JOIN krolestwo
                 ON zamek.krolestwo_id = krolestwo.id )
GROUP  BY zamek,
          krolestwo;

-- zwiększ dodatkowe obrażenia o 2 w umiejętności specjalnej każdemu rycerzowi, którego dodatkowe obrażenia są mniejsze niż 5
UPDATE umiejetnosc_specjalna
SET    dodatkowe_obrazenia = dodatkowe_obrazenia + 2
WHERE  dodatkowe_obrazenia IS NOT NULL
       AND dodatkowe_obrazenia < 5;

-- Przyznanie kopalń, które nie podlegają do żadnego z zamków do zamku o ID: 3 (Barncowl)
UPDATE kopalnia_zlota
SET    zamek_id = 3
WHERE  kopalnia_zlota.zamek_id IS NULL;

-- Dwukrotne powiększenie ilości złota dla zamków, które należą do królestwa o ID: 2 (Pribridal Empire)
UPDATE zamek
SET    zloto = zloto * 2
WHERE  EXISTS (SELECT 1
               FROM   krolestwo
               WHERE  krolestwo.id = zamek.krolestwo_id
                      AND krolestwo.id = 2);

-- usuń wszystkie Tartaki, które są przypisane do jakieogś zamku
DELETE FROM tartak
WHERE  tartak.zamek_id IS NULL;

-- view z Monarchami i ich nastepcami
CREATE VIEW Monarchowie AS
SELECT Krol, Nastepca
FROM Krolestwo;

-- view z piecioma najlepszymi rycerzami
CREATE VIEW TOP AS
SELECT rycerz.nazwa                                AS rycerz,
       rycerz.atak
       + umiejetnosc_specjalna.dodatkowe_obrazenia AS "całkowity atak"
FROM   rycerz,
       umiejetnosc_specjalna
WHERE  umiejetnosc_specjalna.id = rycerz.id
ORDER  BY "całkowity atak" DESC LIMIT 5;
