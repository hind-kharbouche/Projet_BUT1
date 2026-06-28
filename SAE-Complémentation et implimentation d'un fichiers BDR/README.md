
# Gestion d'un Service de Pompiers - Base de Données Relationnelle

## Description du Projet
Ce projet consiste à concevoir et implémenter une base de données relationnelle MySQL pour un service de pompiers. L'objectif principal était de valider le Modèle Conceptuel de Données (MCD) et d'automatiser l'intégration des données à partir de fichiers CSV à l'aide d'un script Python, en garantissant la cohérence et l'intégrité du système.

## Remarque : données fictives
---

## Exécution et Automatisation (Python)

L'insertion des données a été entièrement automatisée via un script Python développé sous VS Code (suite à des limitations techniques avec l'environnement Spyder pour la commande pip).

### Traitements et Nettoyage des Données CSV
Pour assurer la conformité avec le schéma SQL, le script applique les transformations suivantes :
* **Gestion des Chemins :** Configuration dynamique du chemin d'accès aux fichiers CSV.
* **Formatage des Dates :** Conversion automatique des formats de date natifs du CSV vers le format standard SQL.
* **Normalisation des Téléphones :** Ajout systématique du '0' manquant au début de chaque numéro.

### Résolution des Défis Techniques et Clés Étrangères
* **Distinction des Profils :** Identification des matricules pour séparer correctement les "Pompiers" des "Pompiers Volontaires" (gestion des tables habilitation / affectation).
* **Résolution des Libellés en ID (Jointures dynamiques) :**
    * *Casernes et Engins :* Remplacement des libellés de caserne par leur code correspondant (clé étrangère) en parcourant la table caserne.
    * *Grades :* Processus identique pour la table pompier afin d'insérer l'ID du grade à la place du libellé textuel.
* **Gestion des Structures Multi-colonnes (Répétitives) :**
    * Extraction et pivot des colonnes multiples (habilitation1 à habilitation10 et date_obtention1 à date_obtention10) pour les insérer proprement.
    * Traitement similaire pour les colonnes engin1, engin2, engin3 issues du fichier situation.csv.
* **Gestion des Erreurs et Robustesse :** Pour éviter le plantage du script en cas de conflit, les lignes violant les contraintes d'intégrité sont ignorées de manière sécurisée sans interrompre le reste de l'exécution.
* **Reconstitution de Tables Complexes :** Pour mobiliser_moyens_humains, les colonnes CSV ne correspondant pas directement à la table MySQL, le script s'appuie sur des correspondances avec la table engin pour récupérer le numOrdre de chaque engin et le nombre de pompiers associés.

---

## Interface Graphique (Tkinter)

Une interface graphique a été développée avec Tkinter pour visualiser les données de la base (en correspondance avec PHPMyAdmin).
* **Fonctionnalité :** Affichage de chaque table sous forme de tableaux clairs.
* **Ajustement :** Résolution des problèmes initiaux d'alignement des boutons pour une interface propre et fonctionnelle.

---

## Bilan des Étapes

| Étape |
| :--- | 
| **Q1 : Validation du MCD** | 
| **Q2 : Modélisation** | 
| **Q3 : Insertion Python** |
| **Q4 : Requêtes / Vues** | 
| **Q5 : Procédures/Triggers** |
| **Q6 : Interface Tkinter** | 