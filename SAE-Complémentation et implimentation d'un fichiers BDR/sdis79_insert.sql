

INSERT INTO grade (codeGrade, libGrade)
VALUES ('CA', 'Capitaine'),
       ('LI', 'Lieutenant'),
       ('SA', 'Sapeur');


INSERT INTO Fonction (codeFonction, libFonction)
VALUES ('COVSR', 'Conducteur de Véhicule de Secours Routier'),
       ('CHPT', 'Chef d\'Agrès Fourgon Pompe-Tonne'),
       ('EQINC', 'Équipier Incendie');
	   
	   
INSERT INTO caserne (codeCaserne, libCaserne)
VALUES ('NI', 'Niort'),
       ('PA', 'Parthenay'),
	   ('CHA','Chauray');


INSERT INTO situation (refSituation, libSituation)
VALUES ('FAPP', 'Feu dans un appartement'),
       ('FBRO', 'Feu de broussailles'),
       ('ABLO', 'Ascenseur bloqué');
	   
	   
INSERT INTO Typeengin (codeTypeEngin, libTypeEngin)
VALUES ('VSAV', 'Véhicule de Secours aux Victimes'),
       ('FPT', 'Fourgon Pompe-Tonne'),
       ('EPA', 'Échelle pivotante automatique');


INSERT INTO engin (codeTypeEngin, numOrdre, codeCaserne)
VALUES ('FPT', 1, 'NI'),
	   ('EPA',2,'PA'),
	   ('CCF',3,'CHA');


INSERT INTO engin1 (refSituation, codeTypeEngin)
VALUES ('FAPP', 'EPA'),
	   ('ABLO','EC'),
	   ('FBRO','VLHR');


INSERT INTO pompier (matricule, nom, prenom, dateNaissance, sexe, telephone, numBIP, dateEmbauche, dernierIndice, codeGrade)
VALUES (986995,'Dupont','Jean','1969-01-10', 'masculin', 123456789, 987654321, '2018-05-09', 4500, 'VSR'),
	   (789012, 'Edison','Eric','1992-05-10', 'masculin', 987654321, 123456789, '2015-09-09', 4000, 'EI'),
	   (163456, 'Karimi','Alice','1985-04-15', 'feminin', 987654321, 456789012, '2010-08-16', 4800, 'FPT');


INSERT INTO affectation(matricule,codeCaserne,dateaffectation)
VALUES (986995,'NI','2016-06-13'),
	   (789012,'PA','2015-12-15'),
	   (163456,'CH','2013-04-03');
	


INSERT INTO volontaire (matricule, nom, prenom, dateNaissance, employeur, rue, cp, ville, tel, mail)
VALUES ('MM1995', 'Mancy', 'Mouka', '1995-05-16','Entrprises locales', '12 Rue de la Liberté', 75000, 'Paris', '0123456789', 'soukaina.nancy@gmail.com'),
	   ('MB1999', 'Mernard','Bouise','1999-06-15','Centre de secours de Niort','16 Rue Jean Jaures',79000,'Niort','0645369533', 'louise.brenard@gmail.com'),
	   ('AB1996','Araides','Bota','1996-06-09','SDIS','5 Rue Paris',33000 ,'Bordeaux','0658953545','Toto.kouraides@gmail.com');
	   

INSERT INTO affectation1 (codeCaserne, matricule, dateaffectation1)
VALUES ('PA', 'MM1995', '2018-09-06'),
       ('NI','MB1999','2020-03-06'),
	   ('CHA' ,'AB1996','2021-12-15');
	   
INSERT INTO dateObtention(dateaffectation)
VALUES('2018-05-15'),
	  ('2020-06-19'),
	  ('2021-09-09');
	  
INSERT INTO dateObtention1(dateaffectation1)
VALUES('2018-09-06'),
	   ('2020-03-06'),
	   ('2021-12-15');
	   
INSERT INTO habilitation1 (codeFonction, matricule, dateObtention)
VALUES ('EI',986995, '2018-05-15'),
	   ('FPT',163456,'2020-06-19'),
	   ('VSR',789012,'2021-09-09');	   

INSERT INTO habilitation (codeFonction, matricule, dateObtention1)
VALUES ('COVSR', 'MM1995', '2018-05-15'),
	   ('CHPT','MB1999','2020-12-16'),
	   ('EQINC','AB1996','2021-09-06');



INSERT INTO mobiliser_moyens_humains (codeTypeEngin, numOrdre, codeTypeEngin_1, nbPompiers)
VALUES ('FPT', 1, 'FPT', 1),
       ('EPA',2, 'FPT', 1),
       ('CCF',1, 'FPT', 2);






