
# GARMIN-IGN-BDTOPO-MAP

[![Built with Material for MkDocs](https://img.shields.io/badge/Material_for_MkDocs-526CFE?style=for-the-badge&logo=MaterialForMkDocs&logoColor=white)](https://squidfunk.github.io/mkdocs-material/)

Vous pouvez trouver le site complet sur [maps.garmin.allfabox.fr](https://maps.garmin.allfabox.fr/)

Si vous souhaitez créer une carte personnalisée, de randonnée ou topographique, compatible avec les produits **Garmin**, vous vous trouvez au bon endroit ! 
## Résumé

[maps.garmin.allfabox.fr](https://maps.garmin.allfabox.fr/) est un site de documentation sur la création de cartes topographiques GARMIN personnalisées.

Ce site documente les nombreux aspects de la création d'une carte **Garmin personnalisée** *à l'aide de logiciels libres et open source, dans la mesure du possible.*

Le but de ce site est donc la mise à disposition/création de cartes topographiques personnalisées Garmin compatibles avec un GPS de randonnée de la marque **Garmin** ou encore les appareils de suivi de chien tels que **l'Alpha® 100F, l'Alpha® 200F, l'Alpha® 300F, l'Alpha® 50F ou encore l'Astro® 320** *(qui n'est plus en vente à l'heure actuelle)* et qui se rapproche le plus possible des différentes cartes topographiques que Garmin propose. Je pense notamment à la carte [**TOPO France v6 PRO**](https://www.garmin.com/fr-FR/p/612545).

![Garmin](https://maps.garmin.allfabox.fr/assets/images/overview/map-view-01.png)
Extrait de la carte GARMIN IGN BDTOPO MAP France SUD - Espace boisé

![Garmin](https://maps.garmin.allfabox.fr/assets/images/overview/garmin-topo-france-v6-pro.jpeg)
TOPO France v6 PRO - France entière

![Garmin](https://maps.garmin.allfabox.fr/assets/images/overview/garmin-topo-france-v6-pro.jpeg)
  TOPO France v6 PRO - France entière

Vous trouverez une série d’articles dans le but d’expliquer, aux cartographes en herbe et/ou aux plus confirmés, le processus de création des cartes topographiques compatibles avec les appareils GPS de Garmin.

<figure markdown>
  ![Garmin](https://maps.garmin.allfabox.fr/assets/images/overview/map-view-02.png){: width=660 }
  <figcaption><i>Extrait de la carte GARMIN IGN BDTOPO MAP France SUD - Grand axe de circulation</i></figcaption>
</figure>

<figure markdown>
  ![Garmin](https://maps.garmin.allfabox.fr/assets/images/overview/map-view-03.png){: width=660 }
</figure>
<figure markdown>
  ![Garmin](https://maps.garmin.allfabox.fr/assets/images/overview/map-view-04.png){: width=660 }
  <figcaption><i>Extrait de la carte GARMIN IGN BDTOPO MAP France SUD - Zoom sur centre-ville</i></figcaption>
</figure>

Pour réaliser ces cartes, je me suis fortement inspiré de la série d’articles publiée sur le site [GPSFileDepot](https://www.gpsfiledepot.com/). Ces articles ont été publié en 2008, puis mis à jour en 2016. À noter que je n’utiliserai pas l’entièreté des logiciels présentés dans ces articles et viendrai même en ajouter une paire dans la trousse à outils du géomaticien !


!!! note "OBJECTIF"
    Nous aborderons les logiciels, les structures de dossiers, les informations de téléchargement des données cartographiques et leur traitement afin d’obtenir une carte Garmin Topo personnalisée.

## **Prérequis**

De nombreux aspects de ce tutoriel sont basés sur mon expérience et celle des autres géomaticiens qui ont déjà tenté de constituer ce genre de carte Garmin. Ce site est à destination d'un public averti.

Pour réaliser une carte, il va nous falloir des données, et surtout des données géographiques. La données de base — **socle** — j'ai envie de dire, va être la [**BD TOPO®**](https://geoservices.ign.fr/bdtopo) de l'IGN. En effet, depuis le 1er janvier 2021, les données publiques de l’IGN sont libres et accessibles gratuitement en Licence ouverte Etalab 2.0. Dans le contexte du plan national de relance, cette ouverture doit faciliter l’usage des données géographiques et favoriser l’innovation au service du plus grand nombre.

À ce titre, nous allons exploiter cette base de données qui modélise le territoire et ses infrastructures sur l'ensemble du territoire français.

Afin d'enrichir notre carte, nous la compléterons avec les données d'[**OpenStreetMap**](https://www.openstreetmap.org/) (« © les contributeurs OpenStreetMap, sous licence ODbL »).

Les données « RASTER » qui modéliseront le modèle numérique de terrain (DEM/MNT) et contribueront à la création des courbes de niveau seront téléchargées sur ce site [http://dwtkns.com/srtm30m/](http://dwtkns.com/srtm30m/) et après s’être inscrit gratuitement sur le site de la [NASA Earth Observation Data](https://www.earthdata.nasa.gov/eosdis/science-system-description/eosdis-components/earthdata-login) d’où provient la donnée.

## Contribuer
Pour contribuer, ouvrez un [PR](https://github.com/allfab/garmin-ign-bdtopo-map/pulls) !
