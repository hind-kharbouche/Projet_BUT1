import tkinter as tk
from tkinter import ttk, Toplevel, messagebox
import mysql.connector
import csv
import runpy

# Fonction pour afficher les données de la table sélectionnée dans une nouvelle fenêtre Tkinter
def visualiser_table(nom_table):
    try:
        # Connexion à la base de données MySQL
        conn = mysql.connector.connect(
            host="127.0.0.1",
            user="root",
            database="sdis79.sql"
        )

        # Création du curseur
        cursor = conn.cursor()

        # Exécution de la requête pour récupérer toutes les données de la table
        cursor.execute(f"SELECT * FROM {nom_table}")

        # Récupération de toutes les lignes
        rows = cursor.fetchall()

        # Création d'une nouvelle fenêtre pour afficher les données
        affichage_fenetre = Toplevel()
        affichage_fenetre.title(f"Données de la table {nom_table}")

        # Création d'un Treeview pour afficher les données sous forme de tableau
        tree = ttk.Treeview(affichage_fenetre)

        # Définition des colonnes
        colonnes = cursor.column_names
        tree["columns"] = colonnes

        # Configuration des colonnes
        for colonne in colonnes:
            tree.column(colonne, anchor=tk.CENTER)
            tree.heading(colonne, text=colonne)

        # Ajout des données dans le Treeview
        for row in rows:
            tree.insert("", tk.END, values=row)

        tree.pack(expand=True, fill=tk.BOTH)

        # Fermeture du curseur et de la connexion
        cursor.close()
        conn.close()

    except mysql.connector.Error as error:
        messagebox.showerror("Erreur", f"Erreur lors de la connexion à la base de données MySQL: {error}")

# Fonction pour insérer des données dans une table
def inserer_dans_table(nom_table):
    def inserer_donnees():
        try:
            # Exécuter le contenu du fichier sdis79.py
            runpy.run_path("sdis79.py")

            # Connexion à la base de données MySQL
            conn = mysql.connector.connect(
                host="127.0.0.1",
                user="root",
                database="sdis79.sql"
            )

            # Création du curseur
            cursor = conn.cursor()

            # Insérer les données dans la base de données ici
            # Exemple d'insertion :
            # cursor.execute("INSERT INTO nom_de_la_table (colonne1, colonne2, ...) VALUES (%s, %s, ...)", (valeur1, valeur2, ...))

            # Valider la transaction
            conn.commit()

            # Fermeture du curseur et de la connexion
            cursor.close()
            conn.close()

            # Afficher un message pour indiquer que le code a été exécuté
            messagebox.showinfo("Information", "Les données ont été insérées avec succès.")

            # Fermer la fenêtre
            nouvelle_fenetre.destroy()

        except Exception as e:
            # En cas d'erreur, afficher un message d'erreur
            messagebox.showerror("Erreur", f"Une erreur s'est produite : {str(e)}")

    # Créer une nouvelle fenêtre pour l'insertion de données
    nouvelle_fenetre = Toplevel()
    nouvelle_fenetre.title(f"Insérer dans {nom_table}")

    # Bouton pour insérer les données
    btn_inserer = ttk.Button(nouvelle_fenetre, text="Ajouter", command=inserer_donnees)
    btn_inserer.pack(padx=10, pady=10)

# Fonction pour visualiser une table
def visualiser_une_table(nom_table):
    visualiser_table(nom_table)

# Fonction pour gérer la visualisation de la table sélectionnée
def visualiser_donnees(nom_table):
    visualiser_une_table(nom_table)

# Création d'une instance Tkinter
fenetre = tk.Tk()
fenetre.title("Menu")

# Personnalisation des couleurs
fenetre.configure(background="white")
style = ttk.Style()
style.configure("TButton", foreground="black", background="blue")  # Boutons Visualisation
style.configure("TLabel", foreground="black", background="white")   # Libellé Insertion

# Bouton Insérer à droite
btn_inserer = ttk.Button(fenetre, text="Insérer", command=lambda: inserer_dans_table("nom_de_la_table"))
btn_inserer.pack(side=tk.RIGHT, padx=10, pady=10)

# Libellé pour indiquer l'action d'insertion
label_insertion = ttk.Label(fenetre, text="Insérer les données")
label_insertion.pack(side=tk.RIGHT, padx=10, pady=10)

# Tables et leurs colonnes
tables = {
    "grade": ["codeGrade", "libGrade"],
    "fonction": ["codeFonction", "libFonction"],
    "caserne": ["codeCaserne", "libCaserne"],
    "volontaire": ["matricule", "nom", "prenom", "dateNaissance", "employeur", "rue", "cp", "ville", "tel", "mail"],
    "situation": ["refSituation", "libSituation"],
    "Typeengin": ["codeTypeEngin", "libTypeEngin"],
    "DateObtention1": ["dateaffectation1"],
    "DateObtention": ["dateaffectation"],
    "pompier": ["matricule", "nom", "prenom", "dateNaissance", "sexe", "telephone", "numBIP", "dateEmbauche", "dernierIndice", "codeGrade"],
    "engin": ["codeTypeEngin", "numOrdre", "codeCaserne"],
    "mobiliser_moyens_humains": ["codeTypeEngin", "numOrdre", "codeTypeEngin_1", "nbPompiers"],
    "affectation": ["matricule", "codeCaserne", "dateaffectation"],
    "affectation1": ["codeCaserne", "matricule", "matricule_1", "dateaffectation1"],
    "habilitation": ["codeFonction", "matricule", "dateObtention1"],
    "habilitation1": ["matricule", "codeFonction", "dateObtention"],
    "Engin1": ["refSituation", "codeTypeEngin"]
}

# Création des boutons pour chaque table
for table in tables.keys():
    frame = ttk.Frame(fenetre)
    frame.pack(pady=5, fill="x")

    label_table = ttk.Label(frame, text=table)
    label_table.pack(side=tk.LEFT, padx=10)

    # Bouton Visualisation pour chaque table
    btn_visualiser = ttk.Button(frame, text="Visualisation", command=lambda nom_table=table: visualiser_donnees(nom_table))
    btn_visualiser.pack(side=tk.RIGHT, padx=10)

# Affichage de la fenêtre principale
fenetre.mainloop()
