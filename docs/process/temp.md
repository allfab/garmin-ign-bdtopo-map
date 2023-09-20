## **DEM - Données relatives à l’élévation du terrain**
Le dossier **02-DEM** contiendra toutes les données relatives à l’élévation du terrain. En d’autres termes, toutes les données d’altitude. Nous stockerons ici les fichiers RASTER au format SRTM HGT Format que nous aurons préalablement téléchargés sur ce site [http://dwtkns.com/srtm30m/](http://dwtkns.com/srtm30m/) et après s’être inscrit gratuitement sur le site de la [NASA Earth Observation Data](https://www.earthdata.nasa.gov/) d’où provient la donnée. Nous stockerons aussi les données vectorielles relatives aux courbes de niveau qui seront générées grâce aux fichiers RASTER au format ***.HGT**.

L’interface du site [http://dwtkns.com/srtm30m/](http://dwtkns.com/srtm30m/) facilite grandement le téléchargement de données d’élévation de 30 mètres de résolution à partir de la [Shuttle Radar Topography Mission](http://www2.jpl.nasa.gov/srtm/). Cette résolution sera parfaitement adaptée à la création de carte Topo sur des territoires conséquents que peuvent être un département ou encore une région française.

Vous allez me demander pourquoi partir sur ces données d’élévation ? Pourquoi ne pas choisir le [RGE ALTI® de l’IGN](https://geoservices.ign.fr/rgealti), par exemple, qui est un modèle numérique de terrain (MNT) maillé qui décrit le relief du territoire français à grande échelle et qui est téléchargeable dans une résolution de 5m ou encore d’1m ?

Tout simplement parce que le format de données fournit par la [Shuttle Radar Topography Mission](http://www2.jpl.nasa.gov/srtm/) est le format SRTM HGT et ce format est nativement supporté par l’outil de compilation [Mkgmap](https://www.mkgmap.org.uk/download/mkgmap.html) (outil Java de référence dans la suite de ce tutoriel et qui va nous permettre de compiler une carte au format de fichier Garmin ***.IMG** afin qu’elle puisse être chargée sur des appareils GPS Garmin compatibles).

Pour chaque tuile de données compilée dans ce format ***.IMG**, nous serons en capacité avec **Mkgmap** de générer automatiquement un modèle numérique de terrain (MNT ou encore DEM en anglais) directement via l’option **Hill Shading (DEM)**.

Cette création de **DEM** nécessite des fichiers contenant des informations sur la hauteur de la zone couverte par la carte, appelés fichiers ***.HGT**, qui couvrent généralement 1 degré de latitude par 1 degré de longitude et sont nommés par les coordonnées de leur coin inférieur gauche (par exemple N53E009). Ils contiennent des informations sur la hauteur dans une grille de points.

En spécifiant le chemin vers l’ensemble de ces données d’élévation, [Mkgmap](https://www.mkgmap.org.uk/download/mkgmap.html) créera un **DEM** qui sera contenu dans le fichier ***.IMG** et lu par l’appareil Garmin.

## **PFM - Polish Map Format**

Le dossier 03-MP contiendra toutes les données vectorielles que nous aurons préalablement retravaillées et provenant de la [**BD TOPO® de l'IGN**](https://geoservices.ign.fr/bdtopo).

**Qu’est-ce qu’un fichier d’extension *.MP ?**

On l’appelle le format polonais. Le format polonais est un format texte pratique utilisé pour enregistrer des informations cartographiques sur un ordinateur et transférer des informations cartographiques entre des programmes informatiques. Les fichiers cartographiques au format polonais ne peuvent pas être envoyés directement à un appareil GPS. **Ils doivent d’abord être convertis dans un format compréhensible pour votre récepteur GPS.**

Un programme qui effectue cette conversion est appelé un “compilateur de cartes”. Dans notre cas, c’est **Mkgmap** qui va être notre compilateur de cartes” mais il en existe un autre : **cGPSmapper**.

**cGPSmapper, comme Mkgmap,** sont des programmes en ligne de commande qui “compilent” des fichiers au format polonais (***.MP**) et produit une carte vectorielle dans un ou plusieurs fichiers d’un format compréhensible par votre récepteur GPS et Garmin® MapSource : **le format *.IMG.**


