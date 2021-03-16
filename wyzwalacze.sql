-- Wyzwalacz wprowadzajacy stara wartosc obrazen przed update
CREATE TRIGGER Wyzwalacz_1
BEFORE UPDATE ON umiejetnosc_specjalna
FOR EACH ROW
INSERT INTO obrazenia_stare
SET ACTION =  'update'
'Obrazenia' = OLD.Obrazenia;

UPDATE umiejetnosc_specjalna
SET Obrazenia = '1111'
WHERE umiejetnosc_specjalna.id = 27;

-- Wyzwalacz informujacy o przekroczenu Ataku calkowitego przez jednego z rycerzy
DELIMITER $$
CREATE TRIGGER 
    Atak_calkowity_sprawdzenie
BEFORE UPDATE ON
    krolestwo
FOR EACH ROW
    BEGIN
        DECLARE msg VARCHAR(255);
        IF NEW.Atak_calkowity > 100                          
         THEN ( SELECT MAX(Atak_calkowity)                   
              FROM RYCERZE                              
              WHERE rycerze.id = NEW.rycerze.rycerze_id   
            )
           THEN
            SET msg = 'Violation of Maximum damage.' ;
            SIGNAL SQLSTATE 'Nerf this guy' SET message_text = msg ;
        END IF ;
    END ;
    
    -- Wartosc obrazen wprowadzana poprzez update bedzie tak naprawde dodawana do obecnych zdefiniowanych obrazen
    CREATE TRIGGER nowe_obrazenia 
    BEFORE INSERT ON umiejetnosc_specjalna
	FOR EACH ROW SET @Obrazenia = @Obrazenia + NEW.Obrazenia;
    
    DELIMITER $$

CREATE
	TRIGGER `obrazenia_po_aktualizacji` AFTER UPDATE 
	ON `umiejetnosc_specjalna` 
	FOR EACH ROW BEGIN
	
		IF NEW.usuniete THEN
			SET @obrazenia = 'DELETE';
		ELSE
			SET @obrazenia = 'EDIT';
		END IF;
    
		INSERT INTO obrazenia_nowe_v1 (id) VALUES (NEW.id);
		
    END$$


-- Wyzwalacz wprowadzajacy nowe wartosci ataku do nowej tabeli w ktorej dodatkowo bedzie kolumna informujaca o czasie update (nie wiemy jak doprowadzic do tego zeby dzialalo)
DELIMITER ;
    
CREATE TABLE `Atak.nowe` (
	`id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
	`rycerze_id` mediumint(8) unsigned NOT NULL,
	`changetype` enum('NEW','EDIT','DELETE') NOT NULL,
	`changetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	PRIMARY KEY (`id`),
	KEY `ix_rycerze_id` (`rycerze_id`),
	KEY `ix_changetype` (`changetype`),
	KEY `ix_changetime` (`changetime`),
	CONSTRAINT `FK_obrazenia_nowe_id` FOREIGN KEY (`rycerze_id`) REFERENCES `rycerze` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;


DELIMITER $$

CREATE
	TRIGGER `Atak_after_update` AFTER UPDATE 
	ON `rycerze` 
	FOR EACH ROW BEGIN
	
		IF NEW.deleted THEN
			SET @changetype = 'DELETE';
		ELSE
			SET @changetype = 'EDIT';
		END IF;
    
		INSERT INTO audit (rycerze_id, changetype) VALUES (NEW.id, @changetype);
		
    END$$

DELIMITER ;
