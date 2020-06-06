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
   ORDER BY Krolestwo.nazwa

-- Lista zamków Posiadająca ponad 500 jednostek złota
SELECT Zamek.nazwa, Zamek.Zloto
FROM Zamek, Krolestwo
WHERE Zamek.Krolestwo_id = Krolestwo.id AND Zamek.Zloto > 500;
