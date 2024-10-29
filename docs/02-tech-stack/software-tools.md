---
title: Logiciels & outils
icon: material/tools
---

# **02-01/ Logiciels & outils**

Étant géomaticien de métier, je bénéficie pour l’occasion d’une petite panoplie d’outils soumis à licences payantes. Je pense notamment à **Global Mapper et de FME**. Ce seront mes 2 outils clés dans la préparation des données cartographiques. Je vous rassure, il est tout à fait possible d’aller jusqu’au bout de ce didacticiel avec des logiciels libres ou gratuits (éventuellement avec quelques mises en garde) mais le chemin sera quand même bien plus long & compliqué.

**Voici une liste de logiciels (non exhaustive) que nous pourrons utiliser dans la conception de notre carte :**

- **[QGIS](https://www.qgis.org/fr/site/forusers/download.html)** — programme SIG open source ; le meilleur logiciel SIG bureautique Open Source utilisé pour manipuler des données de manière graphique et/ou par ligne de commande (préférez la version de l’installateur réseau OSGeo4W),
- **[GPSMapEdit](http://www.geopainting.com/)** — logiciel shareware spécialement conçu pour fonctionner avec les cartes de type Garmin MP (la licence supprime simplement l’étiquette indiquant faite avec GPSMapEdit et ajoute quelques fonctionnalités d’exportation supplémentaires que nous n’utiliserons pas),
- **[FME](https://fme.safe.com/)** — outil de traitement des données conçu à l’origine pour manipuler des informations géographiques mais qui s’est montré terriblement efficace pour traiter des données de toutes natures avec une interface et une ergonomie sans égal : Bases de données, SIG, tableurs, images, XML, plans CAO, cloud, big data, nuages de points… FME est capable de lire et d’écrire plus de 500 formats et propose des centaines d’opérateurs pour tous les besoins.
==Malheureusement, il ne gère pas le format natif Garmin ou encore le format de code source utilisé par le compilateur cGPSmapper ou Mkgmap qui est appelé PFM (Polski Format Mappy — Format de carte polonais — *.MP) ou “Format polonais”. C’est l’outil Global Mapper qui va nous permettre de transformer nos fichiers ESRI Shapefile en fichier *.MP.==
- **[Global Mapper](http://www.globalmapper.com/)** — logiciel puissant pour éditer les données ; plus rapide que les autres méthodes. Facilite également l’exportation vers le type *.mp par rapport à QGIS,
- **[mkgmap](https://www.mkgmap.org.uk/)** — outil Java qui permet de générer une carte au format de fichier Garmin *.img afin qu’elle puisse être chargée sur des appareils GPS compatibles,
- **[GMAPtool](http://www.gmaptool.eu/en/content/gmaptool)** —outil pour diviser et fusionner des cartes au format Garmin *.IMG,
- **[TYPViewer](https://sites.google.com/site/sherco40/)** — un éditeur de fichier TYP pour GPS Garmin.
- **[GPSFDshp2mp](https://www.gpsfiledepot.com/tools/GPSFDshp2mp.php)** — outil pour convertir les fichiers de formes en fichiers de texte polonais (MP) (facultatif pour les utilisateurs de Global Mapper),
- **[cgpsmapper](https://www.gpsfiledepot.com/tools/cgpsmapper.php)** — programme pour convertir les données dans la carte Garmin finale (le site Web d’origine n’est plus disponible ; il s’agit d’un miroir fourni par [GPSFileDepot](https://www.gpsfiledepot.com/)),
- **[MapSetToolkit](https://sites.google.com/site/scdiscdi/mstk)** — permet de créer facilement les fichiers de prévisualisation (gratuit).