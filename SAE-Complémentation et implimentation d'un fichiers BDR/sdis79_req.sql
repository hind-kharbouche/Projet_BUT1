-- Création de la vue pompiers_par_grade
CREATE VIEW pompiers_par_grade AS
SELECT codeGrade, COUNT(*) AS nombre_pompiers
FROM pompier
GROUP BY codeGrade;

-- Sélection depuis la vue
SELECT a.codeCaserne, AVG(YEAR(CURDATE()) - YEAR(p.dateNaissance)) AS moyenne_age
FROM pompier p
INNER JOIN affectation a ON p.matricule = a.matricule
GROUP BY a.codeCaserne
HAVING moyenne_age > 30;


SELECT e.codeCaserne, e.codeTypeEngin, COUNT(*) AS nombre_engins
FROM engin e
GROUP BY e.codeCaserne, e.codeTypeEngin;

SELECT codeTypeEngin, AVG(nbPompiers) AS moyenne_pompiers_intervention
FROM mobiliser_moyens_humains
GROUP BY codeTypeEngin
HAVING moyenne_pompiers_intervention > 5;


SELECT codeTypeEngin, COUNT(*) AS nombre_engins_disponibles
FROM engin
GROUP BY codeTypeEngin;


SELECT sexe, COUNT(*) AS nombre_pompiers
FROM pompier
GROUP BY sexe;


SELECT situationFamiliale, COUNT(*) AS nombre_pompiers
FROM (
    SELECT CASE
           WHEN YEAR(CURDATE()) - YEAR(dateNaissance) < 18 THEN 'Mineur'
           WHEN YEAR(CURDATE()) - YEAR(dateNaissance) >= 18 AND YEAR(CURDATE()) - YEAR(dateNaissance) < 65 THEN 'Actif'
           ELSE 'Retraité'
           END AS situationFamiliale
    FROM pompier
) AS situation_familiale
GROUP BY situationFamiliale;

SELECT p.codeGrade, AVG(YEAR(CURDATE()) - YEAR(p.dateNaissance)) AS moyenne_age
FROM pompier p
GROUP BY p.codeGrade
HAVING moyenne_age > 30;

SELECT h.codeFonction, COUNT(*) AS nombre_pompiers
FROM habilitation1 h
GROUP BY h.codeFonction;

INSERT INTO volontaire (matricule, nom, prenom, dateNaissance, employeur, rue, cp, ville, tel, mail)
VALUES ('MM1988', 'Pompieer', 'Moki', '1988-05-16','Entrprises locales', '12 Rue de la Liberté', 75000, 'Paris', '0123459789', 'soukaina.nancy@gmail.com'),
	   ('MB1979', 'Mernad','Bernard','1979-06-15','Centre de secours de Niort','16 Rue Jean Jaures',79000,'Niort','0645389533', 'louise.brenard@gmail.com'),
	   ('BB1966','Araide','Kylie','1996-06-09','SDIS','5 Rue Paris',33000 ,'Bordeaux','0658953545','Toto.kouraides@gmail.com');
	   
-- Création de la vue
CREATE VIEW taux_reussite_habilitation AS
SELECT h.codeFonction, COUNT(*) AS nombre_habilites, COUNT(*) / (SELECT COUNT(*) FROM pompier) AS taux_reussite
FROM habilitation1 h
GROUP BY h.codeFonction;

-- Sélection depuis la vue
SELECT * FROM taux_reussite_habilitation;
