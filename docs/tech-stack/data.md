---
title: Téléchargement des données
icon: material/download
---

# **02-03/ Téléchargement des données "socle"**

Pour créer une carte topo, il nous faut des données vectorielles. La donnée de base qui va nous servir de socle à la création de notre carte personnalisée va être la [**BD TOPO® de l'IGN**](https://geoservices.ign.fr/bdtopo). Cette donnée "socle" sera complétée par les données d'[OpenStreetMap](https://www.openstreetmap.org/) via [GeoFabrik](http://www.geofabrik.de/) ainsi que les données de sentier de randonnées glannées ici et là, car cette donnée n'est pas en Open-Data.

N'oublions pas les données "Raster" d'élévation que nous téléchargerons sur ce site [http://dwtkns.com/srtm30m/](http://dwtkns.com/srtm30m/) et après s’être inscrit gratuitement sur le site de la [NASA Earth Observation Data](https://www.earthdata.nasa.gov/eosdis/science-system-description/eosdis-components/earthdata-login) d’où provient la donnée.


## VECTEURS
### **IGN BD TOPO®**

Afin de réaliser notre carte Garmin Topo, nous utiliserons comme données de base, la [**BD TOPO® de l'IGN**](https://geoservices.ign.fr/bdtopo) qui est désormais en téléchargement libre depuis le 1er janvier 2021.

Ce qui est très intéressant avec ce jeu de données, c’est qu’on peut la télécharger sur des échelles de territoire assez variées, du département en passant par la région ou encore sur l’ensemble du territoire français.

<figure markdown>
  ![Image title](/images/02-tech-stack/ign-bdtopo-dataset.webp)
  <figcaption>IGN BD TOPO® — La modélisation 2D et 3D du territoire et de ses infrastructures sur l’ensemble du territoire français</figcaption>
</figure>

La BD TOPO® est une description vectorielle 3D (structurée en objets) des éléments du territoire et de ses infrastructures, de précision métrique, exploitable à des échelles allant du 1 : 2 000 au 1 : 50 000.

Elle couvre de manière cohérente l’ensemble des entités géographiques et administratives du territoire national français.

Elle permet la visualisation, le positionnement, la simulation au service de l’analyse et de la gestion opérationnelle du territoire. La description des objets géographiques en 3D permet de représenter de façon réaliste les analyses spatiales utiles aux processus de décision dans le cadre d’études diverses.

Notons que la majorité de ces objets sont numérisés avec la dimension Z (en 3D). Elle ne nous sera pas nécessaire et nous la supprimerons dans la réalisation de la carte pour n’avoir que des objets vectoriels en 2D .

Depuis 2019, une nouvelle édition (mise à jour) est publiée chaque trimestre, nous permettant de faire évoluer notre carte Garmin personnalisée assez régulièrement.

Les objets de la BD TOPO® sont regroupés par thèmes guidés par la modélisation INSPIRE1 :

- Administratif (limites et unités administratives)
- Adresses (adresses postales),
- Bâti (constructions),
- Hydrographie (éléments ayant trait à l’eau),
- Lieux nommés (lieu ou lieu-dit possédant un toponyme et décrivant un espace naturel ou un lieu habité),
- Occupation du sol (végétation, estran, haie),
- Services et activités (services publics, stockage et transport des sources d’énergie, lieux et sites industriels),
- Transport (infrastructures du réseau routier, ferré ou aérien, itinéraires),
- Zones réglementées (la plupart des zonages faisant l’objet de réglementations spécifiques).

Nous n’utiliserons pas l’ensemble des données présentes dans ce jeu de données. Il vous est aussi possible d’enrichir la carte avec d’autres base de données géographiques une fois que vous avez compris le processus de création d’une carte Garmin personnalisée.

### **Sentier de randonnées - GR**

### **OpenStreetMap**

## RASTER
### **30-Meter SRTM**