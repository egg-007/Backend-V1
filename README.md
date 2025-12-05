# Backend-V1
# Unity Care Clinic – Backend (PHP 8.5 | MySQLi)

## 📌 Description du Projet

Unity Care Clinic est une plateforme de gestion destinée aux établissements médicaux.  
Ce projet correspond à la **première version du backend**, développé en **PHP 8.5 procédural** et **MySQLi**.

L’objectif est de mettre en place une base solide permettant de gérer les entités principales de la clinique (patients, départements, médecins) et d’intégrer un **tableau de bord dynamique** pour superviser l’activité globale de l’établissement.

Cette première version privilégie une architecture simple pour assurer :

- Une compréhension accessible  
- Une implémentation rapide  
- Une maintenance aisée  

---

## 🏗️ Technologies Utilisées

- PHP 8.5 (procédural)
- MySQL / MySQLi
- HTML / CSS / Bootstrap
- JavaScript
- Chart.js (statistiques)
- AJAX (bonus)

---

## 🎯 Fonctionnalités

### 1. Gestion des Entités (CRUD)

Gestion complète des entités suivantes :

- Patients  
- Médecins  
- Départements  

Fonctionnalités incluses :

- Ajouter, modifier, supprimer et lister chaque entité  
- Associer un médecin à un département  
- Gestion complète du cycle de vie d’un patient  

---

### 2. Tableau de Bord (Dashboard)

Le dashboard offre une vue d’ensemble de l’activité :

- Nombre de médecins  
- Nombre de patients  
- Répartition des départements  
- Graphiques interactifs via Chart.js  
- Rafraîchissement dynamique des données  

---

### 3. Internationalisation (i18n)

Système multilingue via des fichiers de langue :

- `fr.php`, `en.php`, `es.php`, etc.  
- Sélecteur de langue intégré au dashboard  
- Chargement dynamique des textes  

---

### 4. Documentation Interne

- Commentaires intégrés dans les scripts  
- Structure claire  
- README complet et détaillé  

---

### 5. Bonus (Fonctionnalités Optionnelles)

- AJAX pour des actions sans rechargement  
- Modals pour afficher des formulaires en fenêtre flottante  
- Graphiques interactifs avancés  

---

## 🧩 User Stories

| ID | User Story | Description |
|----|------------|-------------|
| **US01** | Gestion des Patients | L’admin peut ajouter, modifier, supprimer et afficher les patients. |
| **US02** | Gestion des Départements | L’admin peut créer et administrer les départements. |
| **US03** | Gestion des Médecins | L’admin peut gérer les médecins et les associer à un département. |
| **US04** | Statistiques Dynamiques | L’admin peut consulter des métriques clés via un dashboard interactif. |
| **US05** | Internationalisation | L’utilisateur peut changer la langue de l’interface. |
| **US06** | Fluidité de Navigation | L’utilisateur bénéficie d’actions asynchrones via AJAX (bonus). |

---
