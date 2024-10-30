---
title: Guide
icon: material/book-education
---

# **:material-book-education: 04-01/ Un guide pas à pas**


## **Comment créer des cartes Garmin Topo personnalisées**

Ce didacticiel explique comment créer des cartes topographiques personnalisées compatibles avec les unités GPS Garmin. Ce didacticiel comporte de nombreuses étapes vous expliquant comment créer des cartes avec des logiciels propriétaire (donc soumis à licence et payant), accessibles financièrement et/ou gratuits.

Il n'y a pas d'ordre prédéfini pour la création des fichiers ESRI Shapefile aux spécifications GARMIN et compatible pour l'export au format Polish Map Format **.MP**. 

Vous pouvez organiser la création de ces derniers comme bon vous semble. Il suffit d'ajouter l'ensemble des fichiers **ESRI Shapefile** créés, à l'étape de transformation en fichier **.MP**  pour les compiler en fichier **.IMG** dans l'étape finale de compilation.


## **Spécifications des fichier ESRI Shapefile GARMIN**

Afin de réaliser nos cartes topo personnalisées, il faut préalablement retravailler tous nos fichiers sources vectoriels qui proviennent essentiellement de la [BD TOPO® de l'IGN](https://geoservices.ign.fr/bdtopo) *(mais aussi d'OpenStreetMap ou encore des courbes de niveau que nous allons fabriquer)*. Pour la **BD TOPO®**, ceux-ci sont déjà au format **ESRI Shapefile** mais la table attributaire de chaque couche de la **BD TOPO®** n'est pas aux spécifications GARMIN.

De la même manière, les cartes contenant des couches routables et/ou adressables par voie ne seront prises en charge que par l'entrée **ESRI Shapefile** avec des attributs spécifiques qui définissent les propriétés de chaque linéaire de voirie ou de points d'adresse. Les attributs d'entité sont nécessaires pour la technologie cartographique avancée, comme le calcul automatique d'itinéraire et la recherche d'adresses sur la carte.

Dans un premier temps, nous ne travaillerons pas les fichiers de voirie **ESRI Shapefile** pour qu'ils soient routables. On va se contenter d'une carte topo simple.

!!! warning "Système de coordonnées"
    Toutes les coordonnées géométriques définies dans un fichier ESRI Shapefile aux spécification GARMIN **doivent être spécifiées en degrés décimaux avec un datum WGS84 (EPSG:4326)** et dans aucune autre projection.

## **Difficultées rencontrées**

Une des principales difficulté rencontrée lors de l'élaboration d'une carte topo Garmin personnalisée **est la gestion de la volumétrie de données**.

Dans un premier temps, j'ai testé mon processus de création sur un faible jeu de données (téléchargement du jeu de données de la **BD TOPO®** sur l'unique département de l'Isère). Le but de ce laboratoire était de réaliser 2 cartes topo principales correspondant au Sud et au Nord de la France.

Voici la couverture des 2 cartes :
<figure markdown>
  ![cover-france-nord](../../assets/images/downloads/regions/cover-france-nord.png){ width="400" }
  <figcaption>Couverture France NORD</figcaption>
</figure>
<figure markdown>
  ![cover-france-sud](../../assets/images/downloads/regions/cover-france-sud.png){ width="400" }
  <figcaption>Couverture France SUD</figcaption>
</figure>

!!! Abstract "Nota"
    Vous constaterez que la couverture de la carte France Nord est constituée des régions Bretagne, Normandie, Hauts-de-France, Grand-Est, Île-de-France, Pays-de-la-Loire, Centre-Val-de-Loire et Bourgogne-France-Comté.

    La carte France Sud, quant à elle, est constituée des régions Nouvelle-Aquitaine, Auvergne-Rhône-Alpes, Occitanie, Provence-Alpes-Côte d’Azur et la Corse.

    En conclusion, il faudra télécharger la **BD TOPO®** sur l'ensemble de ces régions sur le site de l'[IGN](https://geoservices.ign.fr/bdtopo#telechargementshpreg) pour construire nos cartes topo personnalisées. Ce qui représente déjà un certaine volume de données à télécharger.

Pour mes tests, j'ai donc téléchargé uniquement le territoire de l'Isère. Ce dernier est un fichier ZIP d'environ 325Mo.
<figure markdown>
  ![ign-bdtopo-download-shapefile-dep](../../assets/images/tutorials/preamble/ign-bdtopo-download-shapefile-dep.png)
  ![ign-bdtopo-download-shapefile-dep-38](../../assets/images/tutorials/preamble/ign-bdtopo-download-shapefile-dep-38.png)
  <figcaption>Téléchargement de la dernière édition de la **BD TOPO®** sur le département de l'Isère qui pèse 325 MO</figcaption>
</figure>

Une fois mes tests réalisés avec succès, j'ai entrepris de lancer les 2 cartes France Nord et Sud qui représentent pour chacune des cartes, un peu moins de **500GO** de données brassées répartie entre le téléchargements de données brutes et les fichiers retravaillés au format ESRI Shapefile ou au format .MP pour la compilation des fichiers .IMG, pour au final, arriver à des fichiers pour la carte France Nord de **2.6GO** et pour la France Sud de **3.2GO**.

## Configurer votre PC

### Téléchargement et installation des logiciels requis

Bien qu'il existe de nombreuses méthodes différentes qui peuvent être utilisées pour y parvenir, ce tutoriel utilisera certains logiciels clés comme :

- FME,
- GLOBAL MAPPER,
- GDAL/OGR2OGR,
- QGIS,
- GMAPTool,
- TYPViewer,
- GPSMAPEdit,
- Basecamp


## **Table des matières**

- [Partie 1 - Données d'élévation/Courbes de niveau - Téléchargement et traitement des données USGS DEM](/04-tutorials/contours/)