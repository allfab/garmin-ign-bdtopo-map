---
title: Spécifications des fichier ESRI Shapefile GARMIN
# icon: material/folder-star-outline
---

# **Spécifications des fichier ESRI Shapefile GARMIN**

Afin de réaliser nos cartes topo personnalisées, il faut préalablement retravailler tous nos fichiers sources vectoriels qui proviennent essentiellement de la [BD TOPO® de l'IGN](https://geoservices.ign.fr/bdtopo) *(mais aussi d'OpenStreetMap ou encore des courbes de niveau que nous allons fabriquer)*. Pour la **BD TOPO®**, ceux-ci sont déjà au format **ESRI Shapefile** mais la table attributaire de chaque couche de la **BD TOPO®** n'est pas aux spécifications GARMIN.

De la même manière, les cartes contenant des couches routables et/ou adressables par voie ne seront prises en charge que par l'entrée **ESRI Shapefile** avec des attributs spécifiques qui définissent les propriétés de chaque linéaire de voirie ou de points d'adresse. Les attributs d'entité sont nécessaires pour la technologie cartographique avancée, comme le calcul automatique d'itinéraire et la recherche d'adresses sur la carte.

Dans un premier temps, nous ne travaillerons pas les fichiers de voirie **ESRI Shapefile** pour qu'ils soient routables. On va se contenter d'une carte topo simple.

!!! warning "Système de coordonnées"
    Toutes les coordonnées géométriques définies dans un fichier ESRI Shapefile aux spécification GARMIN **doivent être spécifiées en degrés décimaux avec un datum WGS84 (EPSG:4326)** et dans aucune autre projection.