# Projet Gossip - Réseau Social avec Sinatra

## Description

Ce projet est une application web de type réseau social permettant de partager des gossips (potins) entre utilisateurs. Il est développé en Ruby en utilisant le framework Sinatra et suit l'architecture MVC (Model-View-Controller).

## Fonctionnalités

- Afficher la liste des gossips.
- Créer un nouveau gossip via un formulaire.
- Stocker les gossips dans un fichier CSV.

## Installation

1. **Cloner le dépôt** :

   ```bash
   git clone https://github.com/votre-utilisateur/projet-gossip.git
   cd projet-gossip
   ```

2. **Installer les dépendances** :

   ```bash
   bundle install
   ```

3. **Lancer le serveur** :
   ```bash
   rackup
   # ou
   shotgun -p 4567
   ```

## Utilisation

1. Ouvrez votre navigateur et accédez à `http://localhost:9292` (ou `http://localhost:4567` si vous utilisez `shotgun`).
2. La page d'accueil affiche la liste des gossips.
3. Cliquez sur le lien "Nouveau Gossip" pour accéder au formulaire de création.
4. Remplissez le formulaire et soumettez-le pour ajouter un nouveau gossip
