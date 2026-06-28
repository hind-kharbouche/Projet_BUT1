import csv
import mysql.connector
from datetime import datetime

#Il faut modifier le chemin des fichiers csv:

# Chemin des fichiers CSV et noms des tables correspondantes dans la base de données
fichiers_csv = {
    "caserne": "C:\\Users\\user\\Downloads\\caserne.csv",
    "fonction": "C:\\Users\\user\\Downloads\\fonction.csv",
    "situation": "C:\\Users\\user\\Downloads\\situation.csv",
    "typeengin": "C:\\Users\\user\\Downloads\\typeengin.csv",
    "grade": "C:\\Users\\user\\Downloads\\grade.csv"}
# Chemin du fichier CSV pour la table 'pompier'
fichier_csv_pompier = "C:\\Users\\user\\Downloads\\pompier.csv"
# Chemin du fichier CSV pour la table 'volontaire'
fichier_csv_volontaire = "C:\\Users\\user\\Downloads\\volontaire.csv"
# Chemin du fichier CSV pour la table 'habilitation'
fichier_csv_habilitation = "C:\\Users\\user\\Downloads\\habilitation.csv"
# Chemin du fichier CSV pour la table 'engin'
fichier_csv_engin ="C:\\Users\\user\\Downloads\\engin.csv"
# Chemin du fichier CSV pour les tables 'DateObtention' et 'DateObtention1'
fichier_csv_affectation= "C:\\Users\\user\\Downloads\\affectation.csv"
# Chemin du fichier CSV pour la table 'engin1'
fichier_csv_situation = "C:\\Users\\user\\Downloads\\situation.csv"
#chemin du fichier CSV pour la table mobiliser_moyens_humains
fichier_csv_mobiliser="C:\\Users\\user\\Downloads\\mobiliser_moyens_humains.csv"


def convertir_date(date_str):
    if date_str is None or date_str == 'NULL':
        return None
    try:
        date_obj = datetime.strptime(date_str, '%d/%m/%Y')
        return date_obj.strftime('%Y-%m-%d')
    except ValueError:
        print(f"Ignoré : Format de date invalide pour '{date_str}'")
        return None

# Fonction pour importer les données d'un fichier CSV dans une table MySQL
def importer_csv_vers_mysql(connexion, curseur, fichier_csv, nom_table):
    with open(fichier_csv, newline='') as csvfile:
        lecteur = csv.DictReader(csvfile, delimiter=';')
        for ligne in lecteur:
            # Récupérer les colonnes existantes dans la table MySQL
            curseur.execute(f"DESCRIBE {nom_table}")
            colonnes_mysql = [colonne[0] for colonne in curseur.fetchall()]
            
            # Créer un dictionnaire de valeurs à insérer
            valeurs = {colonne: ligne[colonne] if colonne in ligne else '' for colonne in colonnes_mysql}
            
            # Générer la requête SQL d'insertion dynamiquement
            colonnes = ', '.join(valeurs.keys())
            placeholders = ', '.join(['%s'] * len(valeurs))
            requete = f"INSERT INTO {nom_table} ({colonnes}) VALUES ({placeholders})"
            
            try:
                # Exécuter la requête SQL avec les valeurs de la ligne actuelle
                curseur.execute(requete, tuple(valeurs.values()))
                connexion.commit()
                print("Données insérées avec succès dans la table", nom_table)
            except mysql.connector.Error as e:
                print(f"Ignoré : Erreur lors de l'insertion dans la table {nom_table} : {e}")

# Fonction pour importer les données d'un fichier CSV dans une table MySQL
def importer_csv_pompier_vers_mysql(connexion, curseur, fichier_csv, nom_table):
    with open(fichier_csv, newline='') as csvfile:
        lecteur = csv.DictReader(csvfile, delimiter=';')
        for ligne in lecteur:
            # Récupérer la date d'embauche du pompier depuis le fichier CSV
            date_embauche_str = ligne.get('dateEmbauche')

            # Vérifier si la date d'embauche est NULL
            if date_embauche_str == 'NULL':
                date_embauche = None
            else:
                # Convertir la date d'embauche au format YYYY-MM-DD
                date_embauche = convertir_date(date_embauche_str)
                if date_embauche is None:
                    continue  # Ignorer la ligne si la date d'embauche est invalide

            # Le reste du code reste inchangé
            libelle_grade = ligne.get('grade')
# Fonction pour importer les données d'un fichier CSV dans une table MySQL


            # Vérifier si le libellé du grade est défini et n'est pas None
            if libelle_grade is None:
                print("Ignoré : Le libellé du grade est None")
                continue

            # Convertir la date de naissance au format YYYY-MM-DD
            date_naissance = convertir_date(ligne.get('dateNaissance'))
            if date_naissance is None:
                continue  # Ignorer la ligne si la date de naissance est invalide
            
            # Vérifier si le libellé du grade existe dans la table des grades
            curseur.execute("SELECT codeGrade FROM grade WHERE libGrade = %s", (libelle_grade,))
            resultat = curseur.fetchone()
            if resultat:
                code_grade = resultat[0]
            else:
                # Vérifier s'il existe une correspondance similaire dans le grade
                curseur.execute("SELECT codeGrade FROM grade WHERE libGrade LIKE %s", ('%' + libelle_grade + '%',))
                resultat_similaire = curseur.fetchone()
                if resultat_similaire:
                    code_grade = resultat_similaire[0]
                    print(f"Corrigé : Le grade '{libelle_grade}' a été corrigé en '{resultat_similaire[1]}'")
                else:
                    print(f"Ignoré : Le grade '{libelle_grade}' n'existe pas dans la table 'grade'")
                    continue

            # Retirer le libellé du grade de la ligne du fichier CSV
            del ligne['grade']

            # Ajouter le code du grade à la ligne du fichier CSV
            ligne['codeGrade'] = code_grade

            # Ajouter un "0" au début du numéro de téléphone
            telephone = ligne.get('telephone')
            if telephone is not None:
                ligne['telephone'] = '0' + str(telephone)

            # Créer un dictionnaire de valeurs à insérer
            valeurs = {
                'matricule': ligne.get('matricule'),
                'nom': ligne.get('nom'),
                'prenom': ligne.get('prenom'),
                'dateNaissance': date_naissance,
                'sexe': ligne.get('sexe'),
                'telephone': ligne.get('telephone'),
                'numBIP': ligne.get('numBIP'),
                'dateEmbauche': convertir_date(ligne.get('dateEmbauche')),
                'dernierIndice': ligne.get('dernierIndice'),
                'codeGrade': code_grade
            }
            
            # Générer la requête SQL d'insertion dynamiquement
            colonnes = ', '.join(valeurs.keys())
            placeholders = ', '.join(['%s'] * len(valeurs))
            requete = f"INSERT INTO {nom_table} ({colonnes}) VALUES ({placeholders})"
            
            try:
                # Exécuter la requête SQL avec les valeurs de la ligne actuelle
                curseur.execute(requete, tuple(valeurs.values()))
                connexion.commit()
                print("Données insérées avec succès dans la table", nom_table)
            except mysql.connector.Error as e:
                print(f"Ignoré : Erreur lors de l'insertion dans la table {nom_table} : {e}")

# Fonction pour importer les données d'un fichier CSV dans une table MySQL
def importer_csv_volontaire_vers_mysql(connexion, curseur, fichier_csv, nom_table):
    with open(fichier_csv, newline='') as csvfile:
        lecteur = csv.DictReader(csvfile, delimiter=';')
        for ligne in lecteur:
            # Convertir la date de naissance au format 'YYYY-MM-DD'
            date_naissance = convertir_date(ligne.get('dateNaissance'))
            telephone = ligne.get('tel')
            if telephone is not None:
                ligne['tel'] = '0' + str(telephone)


            # Insérer la ligne dans la table MySQL
            try:
                curseur.execute("INSERT INTO {} (matricule, nom, prenom, dateNaissance, employeur, rue, cp, ville, tel, mail) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s)".format(nom_table),
                                (ligne.get('matricule'), ligne.get('nom'), ligne.get('prenom'), date_naissance, ligne.get('employeur'), ligne.get('rue'), ligne.get('cp'), ligne.get('ville'), ligne.get('tel'), ligne.get('mail')))
                connexion.commit()
                print("Donnée insérée avec succès.")
            except mysql.connector.Error as e:
                print(f"Ignorée : Erreur lors de l'insertion : {e}")

# Fonction pour importer les données d'un fichier CSV dans une table MySQL
def importer_csv_habilitation_vers_mysql(connexion, curseur, fichier_csv):
    with open(fichier_csv, newline='') as csvfile:
        lecteur = csv.DictReader(csvfile, delimiter=';')
        for ligne in lecteur:
            # Récupérer les valeurs de chaque colonne
            matricule = ligne.get('matricule')
            code_fonction = ligne.get('codeFonction')
            date_obtention = ligne.get('dateObtention')  # Garder la date sous forme de chaîne

            # Vérifier si les valeurs nécessaires sont présentes
            if not matricule or not code_fonction or not date_obtention:
                print("Ignorée : Valeur manquante dans le fichier CSV")
                continue

            # Convertir la date au format YYYY-MM-DD
            try:
                date_obtention_formatted = datetime.strptime(date_obtention, '%d/%m/%Y').date().isoformat()
            except ValueError:
                print("Ignorée : Format de date invalide")
                continue

            # Vérifier si le matricule appartient à un pompier
            curseur.execute("SELECT matricule FROM pompier WHERE matricule = %s", (matricule,))
            pompier_exist = curseur.fetchone()

            # Insérer les données dans la table habilitation1 si le matricule appartient à un pompier
            if pompier_exist:
                try:
                    curseur.execute("INSERT INTO habilitation1 (matricule, codeFonction, dateObtention) VALUES (%s, %s, %s)",
                                    (matricule, code_fonction, date_obtention_formatted))
                    connexion.commit()
                    print("Données insérées avec succès dans la table habilitation1")
                except mysql.connector.Error as e:
                    print(f"Ignorée : Erreur lors de l'insertion dans la table habilitation1 : {e}")
            else:
                # Insérer les données dans la table habilitation sinon
                try:
                    curseur.execute("INSERT INTO habilitation (codeFonction, matricule, dateObtention1) VALUES (%s, %s, %s)",
                                    (code_fonction, matricule, date_obtention_formatted))
                    connexion.commit()
                    print("Données insérées avec succès dans la table habilitation")
                except mysql.connector.Error as e:
                    print(f"Ignorée : Erreur lors de l'insertion dans la table habilitation : {e}")

# Fonction pour importer les données d'un fichier CSV dans une table MySQL
def importer_csv_engin_vers_mysql(connexion, curseur, fichier_csv):
    with open(fichier_csv, newline='') as csvfile:
        lecteur = csv.DictReader(csvfile, delimiter=';')  # Modifier le délimiteur à ";" ici
        for ligne in lecteur:
            # Récupérer les valeurs depuis le fichier CSV
            code_type_engin = ligne.get('codeTypeEngin')
            num_ordre = int(ligne.get('numOrdre'))
            libelle_caserne = ligne.get('caserne').strip()  # Supprimer les espaces éventuels autour du libellé de la caserne

            # Rechercher le code de la caserne correspondant dans la table 'caserne'
            curseur.execute("SELECT codeCaserne FROM caserne WHERE libCaserne = %s", (libelle_caserne,))
            resultat_caserne = curseur.fetchone()
            if resultat_caserne:
                code_caserne = resultat_caserne[0]
            else:
                print(f"Ignoré : La caserne avec le libellé '{libelle_caserne}' n'existe pas dans la table 'caserne'")
                continue

            # Insérer la ligne dans la table 'engin'
            try:
                curseur.execute("INSERT INTO engin (codeTypeEngin, numOrdre, codeCaserne) VALUES (%s, %s, %s)",
                                (code_type_engin, num_ordre, code_caserne))
                connexion.commit()
                print("Données insérées avec succès dans la table engin")
            except mysql.connector.Error as e:
                print(f"Ignoré : Erreur lors de l'insertion dans la table engin : {e}")

# Fonction pour importer les données d'un fichier CSV dans une table MySQL
def importer_csv_date_obtention_vers_mysql(connexion, curseur, fichier_csv):
    # Fonction pour convertir une date au format YYYY-MM-DD
    def convertir_date(date_str):
        try:
            date_obj = datetime.strptime(date_str, '%d/%m/%Y')
            return date_obj.strftime('%Y-%m-%d')
        except ValueError:
            print(f"Ignoré : Date invalide dans le fichier CSV - {date_str}")
            return None

    with open(fichier_csv, newline='') as csvfile:
        lecteur = csv.DictReader(csvfile, delimiter=';')
        for ligne in lecteur:
            # Récupérer les valeurs depuis le fichier CSV
            matricule = ligne.get('matricule')
            date_affectation_str = ligne.get('dateaffecation')

            # Vérifier si toutes les valeurs nécessaires sont présentes
            if matricule is None or date_affectation_str is None:
                print("Ignoré : Valeur manquante dans le fichier CSV")
                continue
            
            # Convertir la date d'affectation au format YYYY-MM-DD
            date_affectation = convertir_date(date_affectation_str)
            if date_affectation is None:
                continue

            # Vérifier si la matricule est présente dans la table 'volontaire'
            curseur.execute("SELECT * FROM volontaire WHERE matricule = %s", (matricule,))
            resultat_volontaire = curseur.fetchone()

            # Si la matricule est présente dans la table 'volontaire', insérer dans DateObtention1
            if resultat_volontaire:
                try:
                    curseur.execute("INSERT INTO DateObtention1 (dateaffectation1) VALUES (%s)",
                                    (date_affectation,))
                    connexion.commit()
                    print("Données insérées avec succès dans la table DateObtention1")
                except mysql.connector.Error as e:
                    print(f"Ignoré : Erreur lors de l'insertion dans la table DateObtention1 : {e}")
            else:
                # Sinon, insérer dans DateObtention
                try:
                    curseur.execute("INSERT INTO DateObtention (dateaffectation) VALUES (%s)",
                                    (date_affectation,))
                    connexion.commit()
                    print("Données insérées avec succès dans la table DateObtention")
                except mysql.connector.Error as e:
                    print(f"Ignoré : Erreur lors de l'insertion dans la table DateObtention : {e}")

# Fonction pour importer les données d'un fichier CSV dans une table MySQL
def importer_csv_engin_vers_mysql(connexion, curseur, fichier_csv):
    with open(fichier_csv, newline='') as csvfile:
        lecteur = csv.DictReader(csvfile, delimiter=';')
        for ligne in lecteur:
            # Récupérer les valeurs depuis le fichier CSV
            code_type_engin = ligne.get('codeTypeEngin')
            num_ordre = ligne.get('numOrdre')
            libelle_caserne = ligne.get('caserne').strip()  # Supprimer les espaces éventuels autour du libellé de la caserne

            # Rechercher le code de la caserne correspondant dans la table 'caserne'
            curseur.execute("SELECT codeCaserne FROM caserne WHERE libCaserne = %s", (libelle_caserne,))
            resultat_caserne = curseur.fetchone()
            if resultat_caserne:
                code_caserne = resultat_caserne[0]
            else:
                print(f"Ignoré : La caserne avec le libellé '{libelle_caserne}' n'existe pas dans la table 'caserne'")
                continue

            # Insérer la ligne dans la table 'engin'
            try:
                curseur.execute("INSERT INTO engin (codeTypeEngin, numOrdre, codeCaserne) VALUES (%s, %s, %s)",
                                (code_type_engin, num_ordre, code_caserne))
                connexion.commit()
                print("Données insérées avec succès dans la table engin")
            except mysql.connector.Error as e:
                print(f"Ignoré : Erreur lors de l'insertion dans la table engin : {e}")

# Fonction pour importer les données d'un fichier CSV dans une table MySQL
def remplir_table_engin1(connexion, curseur, fichier_csv):
    try:
        with open(fichier_csv, newline='') as csvfile:
            lecteur = csv.DictReader(csvfile, delimiter=';')
            for ligne in lecteur:
                ref_situation = ligne.get('refSituation')
                engin1 = ligne.get('engin1')
                engin2 = ligne.get('engin2')
                engin3 = ligne.get('engin3')

                # Insérer les données dans la table Engin1
                curseur.execute("INSERT IGNORE INTO Engin1 (refSituation, codeTypeEngin) VALUES (%s, %s)", (ref_situation, engin1))
                curseur.execute("INSERT IGNORE INTO Engin1 (refSituation, codeTypeEngin) VALUES (%s, %s)", (ref_situation, engin2))
                curseur.execute("INSERT IGNORE INTO Engin1 (refSituation, codeTypeEngin) VALUES (%s, %s)", (ref_situation, engin3))

        # Valider les changements et enregistrer dans la base de données
        connexion.commit()
        print("Les données ont été insérées avec succès dans la table Engin1.")
    except OSError as e:
        # En cas d'erreur, annuler les changements
        print(f"Erreur lors de l'insertion dans la table Engin1 : {e}")
        connexion.rollback()

# Fonction pour importer les données d'un fichier CSV dans une table MySQL
def importer_csv_habilitation_vers_mysql(connexion, curseur, fichier_csv):
     with open(fichier_csv, newline='') as csvfile:
        lecteur = csv.DictReader(csvfile, delimiter=';')
        for ligne in lecteur:
            matricule = ligne.get('matricule')

            # Vérifier si le matricule appartient à un volontaire
            curseur.execute("SELECT matricule FROM volontaire WHERE matricule = %s", (matricule,))
            volontaire_exist = curseur.fetchone()

            # Boucler sur les habilitations et leurs dates
            for i in range(1, 11):
                habilitation = ligne.get(f'habilitation{i}')
                date_obtention = ligne.get(f'dateObtention{i}')

                # Vérifier si les valeurs nécessaires sont présentes
                if not habilitation or not date_obtention:
                    continue

                # Convertir la date au format YYYY-MM-DD
                try:
                    date_obtention_formatted = datetime.strptime(date_obtention, '%d/%m/%Y').date().isoformat()
                except ValueError:
                    print(f"Ignorée : Format de date invalide pour le matricule {matricule}")
                    continue

                # Insérer les données dans la table habilitation si le matricule appartient à un volontaire
                if volontaire_exist:
                    try:
                        curseur.execute("INSERT IGNORE INTO habilitation (matricule, codeFonction, dateObtention1) VALUES (%s, %s, %s)",
                                        (matricule, habilitation, date_obtention_formatted))
                        connexion.commit()
                        print(f"Donnée insérée avec succès dans la table habilitation pour le matricule {matricule}")
                    except mysql.connector.Error as e:
                        print(f"Ignorée : Erreur lors de l'insertion pour le matricule {matricule} : {e}")
                else:
                    # Insérer les données dans la table habilitation1 sinon
                    try:
                        curseur.execute("INSERT IGNORE INTO habilitation1 (matricule, codeFonction, dateObtention) VALUES (%s, %s, %s)",
                                        (matricule, habilitation, date_obtention_formatted))
                        connexion.commit()
                        print(f"Donnée insérée avec succès dans la table habilitation1 pour le matricule {matricule}")
                    except mysql.connector.Error as e:
                        print(f"Ignorée : Erreur lors de l'insertion pour le matricule {matricule} : {e}")

# Fonction pour importer les données d'un fichier CSV dans une table MySQL
def importer_csv_affectation_vers_mysql(connexion, curseur, fichier_csv):
    # Fonction pour convertir une date au format YYYY-MM-DD
    def convertir_date(date_str):
        try:
            date_obj = datetime.strptime(date_str, '%d/%m/%Y')
            return date_obj.strftime('%Y-%m-%d')
        except ValueError:
            print(f"Ignoré : Date invalide dans le fichier CSV - {date_str}")
            return None

    with open(fichier_csv, newline='') as csvfile:
        lecteur = csv.DictReader(csvfile, delimiter=';')
        for ligne in lecteur:
            # Récupérer les valeurs depuis le fichier CSV
            matricule = ligne.get('matricule')
            nom = ligne.get('nom')
            prenom = ligne.get('prénom')
            date_affectation_str = ligne.get('dateaffecation')
            libelle_caserne = ligne.get('caserne')

            # Vérifier si toutes les valeurs nécessaires sont présentes
            if matricule is None or nom is None or prenom is None or date_affectation_str is None or libelle_caserne is None:
                print("Ignoré : Valeur manquante dans le fichier CSV")
                continue
            
            # Convertir la date d'affectation au format YYYY-MM-DD
            date_affectation = convertir_date(date_affectation_str)
            if date_affectation is None:
                continue

            # Vérifier si la matricule existe dans la table 'pompier'
            curseur.execute("SELECT * FROM pompier WHERE matricule = %s", (matricule,))
            resultat_pompier = curseur.fetchone()
            if not resultat_pompier:
                print(f"Ignoré : La matricule '{matricule}' n'existe pas dans la table 'pompier'")
                continue

            # Rechercher le code de la caserne correspondant dans la table 'caserne'
            curseur.execute("SELECT codeCaserne FROM caserne WHERE libCaserne = %s", (libelle_caserne,))
            resultat_caserne = curseur.fetchone()
            if resultat_caserne:
                code_caserne = resultat_caserne[0]
            else:
                print(f"Ignoré : Le caserne avec le libellé '{libelle_caserne}' n'existe pas dans la table 'caserne'")
                continue

            # Vérifier si la date d'affectation existe dans la table 'dateObtention'
            curseur.execute("SELECT * FROM DateObtention WHERE dateaffectation = %s", (date_affectation,))
            if curseur.fetchone():
                table_affectation = "affectation"
            else:
                table_affectation = "affectation1"

            # Insérer la ligne dans la table correspondante ('affectation' ou 'affectation1')
            try:
                if table_affectation == "affectation":
                    curseur.execute(f"INSERT INTO {table_affectation} (matricule, codeCaserne, dateaffectation) VALUES (%s, %s, %s)",
                                    (matricule, code_caserne, date_affectation))
                else:
                    curseur.execute(f"INSERT INTO {table_affectation} (matricule, codeCaserne, dateaffectation1) VALUES (%s, %s, %s)",
                                    (matricule, code_caserne, date_affectation))
                connexion.commit()
                print(f"Données insérées avec succès dans la table {table_affectation}")
            except mysql.connector.Error as e:
                print(f"Ignoré : Erreur lors de l'insertion dans la table {table_affectation} : {e}")        
        
# Fonction pour importer les données d'un fichier CSV dans une table MySQL
def importer_csv_mobilisermoyenshumains_vers_mysql(connexion, curseur, fichier_csv, nom_table):
    with open(fichier_csv, newline='') as csvfile:
        reader = csv.reader(csvfile, delimiter=';')
        # Ignorer l'en-tête
        next(reader)
        
        for row in reader:
            codeFonction, TypeEngin, nbPompiers = row

            # Créer un nouveau curseur à chaque itération pour éviter l'erreur "Unread result found"
            cursor = connexion.cursor()

            # Requête pour obtenir le codeTypeEngin à partir de TypeEngin
            cursor.execute("SELECT codeTypeEngin FROM Typeengin WHERE codeTypeEngin = %s", (TypeEngin,))
            codeTypeEngin = cursor.fetchone()

            if codeTypeEngin:
                codeTypeEngin = codeTypeEngin[0]

                # Requête pour obtenir le numOrdre à partir du codeTypeEngin dans la table `engin`
                cursor.execute("SELECT numOrdre FROM engin WHERE codeTypeEngin = %s", (codeTypeEngin,))
                numOrdre_result = cursor.fetchall()

                if numOrdre_result:
                    # Utilisation du premier résultat de la liste
                    numOrdre = numOrdre_result[0][0]

                    # Afficher les valeurs avant l'insertion
                    print(f"Valeurs à insérer : codeTypeEngin = {codeTypeEngin}, numOrdre = {numOrdre}, nbPompiers = {nbPompiers}")

                    # Insérer les données dans la table `mobiliser_moyens_humains`
                    cursor.execute("""
                        INSERT IGNORE INTO mobiliser_moyens_humains (codeTypeEngin, numOrdre, codeTypeEngin_1, nbPompiers)
                        VALUES (%s, %s, %s, %s)
                    """, (codeTypeEngin, numOrdre, codeTypeEngin, nbPompiers))
                else:
                    print(f"Aucun numéro d'ordre n'a été trouvé pour le type d'engin '{TypeEngin}'.")
            else:
                print(f"Le type d'engin '{TypeEngin}' n'existe pas dans la table `Typeengin`.")

        # Effectuer un commit pour enregistrer les modifications dans la base de données
        connexion.commit()
 
# Connexion à la base de données MySQL
connexion = mysql.connector.connect(
    host="127.0.0.1",
    user="root",
    database="sdis79.sql"
)
curseur = connexion.cursor()

# Importer les données de chaque fichier CSV dans la base de données
for nom_table, fichier_csv in fichiers_csv.items():
    importer_csv_vers_mysql(connexion, curseur, fichier_csv, nom_table)    
# Importer les données du fichier CSV dans la table 'pompier'
importer_csv_pompier_vers_mysql(connexion, curseur, fichier_csv_pompier, "pompier")
# Importer les données du fichier CSV dans la table 'volontaire'
importer_csv_volontaire_vers_mysql(connexion, curseur, fichier_csv_volontaire, "volontaire")
# Importer les données du fichier CSV dans les tables 'habilitation' et 'habilitation1'
importer_csv_habilitation_vers_mysql(connexion, curseur, fichier_csv_habilitation)
# Importer les données du fichier CSV dans la table 'engin'
importer_csv_engin_vers_mysql(connexion, curseur, fichier_csv_engin)
# Importer les données du fichier CSV dans les tables 'DateObtention' et 'DateObtention1'
importer_csv_date_obtention_vers_mysql(connexion, curseur, fichier_csv_affectation)
#Importer les données du fichier CSV dans la table 'engin'
importer_csv_engin_vers_mysql(connexion, curseur, fichier_csv_engin)
# Importer les données du fichier CSV dans la table 'engin1'
remplir_table_engin1(connexion, curseur, fichier_csv_situation)
# Importer les données du fichier CSV dans la table 'engin'
importer_csv_habilitation_vers_mysql(connexion, curseur, fichier_csv_habilitation)
# Importer les données du fichier CSV dans la table 'affectation'
importer_csv_affectation_vers_mysql(connexion, curseur, fichier_csv_affectation)
# Importer les données du fichier csv dans la table 'mobiliser_moyens_humains'
importer_csv_mobilisermoyenshumains_vers_mysql(connexion,curseur,fichier_csv_mobiliser,"mobiliser_moyens_humains")

# Fermeture de la connexion à la base de données
curseur.close()
connexion.close()


