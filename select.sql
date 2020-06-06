-- Wyświetlenie wszystkich rycerzy i ich pochodzenie
SELECT Rycerze.Nazwa AS "Imię rycerza", Zamek.Nazwa AS "Zamek", Krolestwo.Nazwa AS "Królestwo" from Rycerze, Zamek, Krolestwo
WHERE Rycerze.Zamek_id = Zamek.id AND Krolestwo.id = Zamek.Krolestwo_id
ORDER BY Zamek.Nazwa, Rycerze.Nazwa;

-- Wyświetlenie wszystkich rycerzy posortowanych malejąco atakiem wraz z umiejętnością specjlaną
SELECT Rycerze.Nazwa AS "Imię rycerza", Rycerze.Atak AS "Atak podstawowy", Umiejetnosc_Specjalna.Dodatkowe_Obrazenia AS "Atak specjalny", Rycerze.Atak+Umiejetnosc_Specjalna.Dodatkowe_Obrazenia AS "Całkowity atak"
FROM Rycerze, Umiejetnosc_Specjalna
WHERE Umiejetnosc_Specjalna.id = Rycerze.id
ORDER BY "Całkowity atak" DESC;

-- Krolestwa z nastepcami
SELECT Krolestwo.nazwa, Krolestwo.Krol, Krolestwo.Nastepca FROM Krolestwo
  WHERE Krolestwo.Nastepca IS NOT NULL;

-- Lista zamków oraz do jakiego królestwa należą
SELECT Krolestwo.nazwa AS "Królestwo", Zamek.nazwa AS "Zamek"
   FROM Krolestwo INNER JOIN Zamek
   ON Krolestwo.id=Zamek.Krolestwo_id
   ORDER BY Krolestwo.nazwa;

-- Lista zamków Posiadająca ponad 500 jednostek złota
SELECT Zamek.nazwa, Zamek.Zloto
FROM Zamek, Krolestwo
WHERE Zamek.Krolestwo_id = Krolestwo.id AND Zamek.Zloto > 500;

-- Lista Kopalń z nazwą Hollow, które są przypisane do jakiegoś zamku
SELECT * FROM Kopalnia_Zlota WHERE nazwa LIKE '%Hollow' AND Zamek_id IS NOT NULL;

-- Lista zamków posiadająca Kopalnie Złota
SELECT Zamek.id, Zamek.nazwa FROM Zamek
  WHERE id IN (
    SELECT Kopalnia_Zlota.Zamek_id FROM Kopalnia_Zlota
    );

-- lista zamkow wraz z iloscia kopaln
SELECT zamek.nazwa as Zamek, Krolestwo.nazwa as Krolestwo, count(*) as "ile kopalń"
    FROM (( Zamek INNER JOIN Kopalnia_Zlota
              ON Zamek.id = Kopalnia_Zlota.Zamek_id
          ) INNER JOIN Krolestwo
              ON Zamek.Krolestwo_id = Krolestwo.id
        )
    GROUP BY Zamek, Krolestwo;


-- zwiększ dodatkowe obrażenia o 2 w umiejętności specjalnej każdemu rycerzowi, którego dodatkowe obrażenia są mniejsze niż 5

UPDATE Umiejetnosc_Specjalna SET Dodatkowe_Obrazenia = Dodatkowe_Obrazenia+2
  WHERE Dodatkowe_Obrazenia IS NOT NULL AND Dodatkowe_Obrazenia < 5;

-- Przyznanie kopalń, które nie podlegają do żadnego z zamków do zamku o ID: 3 (Barncowl)
UPDATE Kopalnia_Zlota SET Zamek_id = 3
  WHERE Kopalnia_Zlota.Zamek_id IS NULL;

-- Dwukrotne powiększenie ilości złota dla zamków, które należą do królestwa o ID: 2 (Pribridal Empire)
UPDATE Zamek SET Zloto = Zloto*2
  WHERE EXISTS (
    SELECT 1 FROM Krolestwo WHERE Krolestwo.id = Zamek.Krolestwo_id AND Krolestwo.id=2
  );



-- usuń wszystkie Tartaki, które są przypisane do jakieogś zamku
DELETE FROM Tartak
  WHERE Tartak.Zamek_id IN (
    SELECT Zamek.id FROM Zamek
    );
