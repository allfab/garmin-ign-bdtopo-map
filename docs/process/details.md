# **03-02/ Détails du process**

Il faut savoir que la création d’une **carte Garmin personnalisée** compatible avec **un récepteur GPS Garmin** peut être comparée à de la programmation : 

- Vous écrivez un programme (c’est-à-dire une carte) dans le langage de programmation (ici, en format polonais **.MP**),
- Puis vous le **compilez**.

Alternativement — tout comme pour la programmation — des outils existent pour générer le code source visuellement ou semi-automatiquement ou pour aider d’autres manières à la préparation du code.

## **Polski Format Mappy — Format de carte polonais - \*.MP**
Le format de code source utilisé par le compilateur **cGPSmapper** ou **Mkgmap** est appelé **PFM** (Polski Format Mappy — Format de carte polonais — ***.MP**) ou “Format polonais”.

L’extension de fichier standard pour les cartes au format PFM est **.MP** (dans les versions précédentes, l’extension **.TXT** était utilisée, ce qui est toujours acceptable, mais non recommandé).

Une carte au formap Polonais se compose d’objets cartographiques répartis en trois catégories :

- **Points** (points d’intérêt, par exemple un hôtel, un restaurant), points (objets ponctuels non indexés, par exemple un sommet, un bâtiment),
- **Polylignes** (objets linéaires, par exemple une rue, un ruisseau),
- **Polygones** (objets de surface, par exemple lac, forêt).

!!! warning
    ***Le système de coordonnées est toujours en WGS84 - EPSG:4326.***

!!! Abstract "Documentation"
    Si vous souhaitez en apprendre plus sur le format Polonais, voici la documentation de [**cGPSMapper**](../resources/manuals/cGPSmapper-UsrMan-v02.5.pdf) dans lequel vous trouverez les spécifications du format **\*.MP**.

## **Extrait d'un fichier *.MP de points**

Pour les objets non dimensionnels (**POI et points**), il est nécessaire de définir les attributs de l’objet, tels que l’étiquette et le type, ainsi que la paire de coordonnées de l’objet (latitude, longitude).

    [RGN10]
    Type=0x15006
    Label=Marché U
    EndLevel=2
    Data0=(-21.2802415,55.5154736)
    [END]

    [RGN10]
    Type=0x15006
    Label=Hyper U
    EndLevel=2
    Data0=(-21.2726251,55.5080521)
    [END]

    [RGN10]
    Type=0x15004
    EndLevel=2
    Data0=(-21.0086464,55.3194558)
    [END]

    [RGN10]
    Type=0x15006
    Label=Run Market
    EndLevel=2
    Data0=(-20.8936158,55.4863466)
    [END]

    [RGN10]
    Type=0x15001
    Label=La Parisienne
    EndLevel=2
    Data0=(-20.8939339,55.4573558)
    [END]

    [RGN10]
    Type=0x15001
    Label=Boulangerie Patisserie Ayave
    EndLevel=2
    Data0=(-20.8961893,55.4582326)
    [END]


## **Extrait d'un fichier \*.MP de polylignes et de polygones**
Pour les objets dimensionnels (**polylignes et polygones**), il est nécessaire de définir les attributs de l’objet, ainsi que les paires de coordonnées de tous les sommets de l’objet. Fournir les coordonnées est la partie la plus laborieuse de la création de cartes.

    [POLYLINE]
    Type=0x06
    EndLevel=2
    Data0=(-20.9170692,55.4799029),(-20.9171283,55.4802503),(-20.9171698,55.4804451),(-20.9171874,55.480593),(-20.9172003,55.4807217),(-20.9172063,55.480786)
    [END]

    [POLYLINE]
    Type=0x06
    EndLevel=2
    Data0=(-20.9182267,55.4789288),(-20.9180386,55.478998),(-20.9178701,55.4790536),(-20.9177971,55.4790735),(-20.9177232,55.4790906),(-20.9176637,55.4791037),(-20.9175997,55.4791111),(-20.917558,55.4791029),(-20.9175262,55.4790743),(-20.9174986,55.4790266),(-20.9174856,55.4789825),(-20.9174778,55.478921),(-20.9174729,55.478874),(-20.9174625,55.4788269)
    [END]

    [POLYGON]
    Type=0x11005
    EndLevel=2
    Data0=(-20.9171644,55.4766995),(-20.9171643,55.4766802),(-20.9171459,55.4766516),(-20.9170826,55.4766426),(-20.9170735,55.4766331),(-20.9170802,55.4763734),(-20.917088,55.4762291),(-20.9170788,55.4762196),(-20.9170155,55.4762106),(-20.9170064,55.4762011),(-20.9169885,55.4762205),(-20.9169801,55.4762879),(-20.9169897,55.4763551),(-20.9169995,55.4764415),(-20.9169913,55.4765282),(-20.9169734,55.4765476),(-20.9169476,55.476692),(-20.916957,55.47674),(-20.9169661,55.4767495),(-20.9169753,55.4767591),(-20.9169937,55.4767973),(-20.9170119,55.4768164),(-20.9170208,55.4768067),(-20.9170479,55.4767968),(-20.9170568,55.4767871),(-20.9170654,55.4767389),(-20.9170744,55.4767292),(-20.9171464,55.4766996),(-20.9171644,55.4766995)
    [END]


## **Générer ses fichiers \*.MP**

Vous pouvez préparer le fichier source de la carte (***.MP**) en utilisant différentes méthodes :

- En écrivant le code source complet avec n’importe quel éditeur de texte,
- En le générant visuellement (en dessinant sur l’écran) avec n’importe quel éditeur visuel,
- En important des objets (waypoints et traces) créé par votre logiciel de cartographie préféré (QGIS, Global Mapper, etc),
- Ou par diverses combinaisons de ces méthodes.

Lorsque vous avez terminé votre carte, vous pouvez la compiler avec **cGPSmapper ou Mkgmap** (plusieurs méthodes sont disponibles) et la prévisualiser après compilation.
L’extension de fichier standard pour les cartes **compilées** est ***.IMG**.

Enfin, vous pouvez télécharger le fichier de carte compilé résultant (***.IMG**) sur votre GPS.

!!! warning "NOTA"
    Dans la suite de ce tutoriel, nous n’allons bien entendu pas écrire chaque objet de la carte à la main sur un éditeur de texte !
    
    Nous allons **retravailler** les fichiers au format ***“ESRI Shapefile”*** de la BD TOPO® de l’IGN avec **l’ETL FME** puis les exporter au format polonais ***.MP** via **Global Mapper** pour enfin les compiler au format ***.IMG** avec **mkgmap**.


## **Structuration des fichiers ESRI Shapefile avant exportation au format Polonais \*.MP**

Quand je dis **“retravailler”**, je parle de la structuration de nos fichiers vectoriels SIG sources. Les données vectorielles sont sans doute le type le plus commun de données que vous trouverez dans l’utilisation quotidienne des SIG.

Les données vectorielles représentent des entités sous forme de points, lignes et polygones sur un plan de coordonnées.

Chaque objet d’un jeu de données vectorielles est appelé une entité, et est associé à des attributs qui décrivent cette entité. Ce sont les attributs que nous allons surtout modifiés pour qu’ils puissent être correctement **exporter et interpréter au format polonais \*.MP**.

En effet, pour que la compilation au format **\*.IMG** se passe bien, il faut que nos fichiers au format polonais **\*.MP** aient les attributs suivants :

- **NAME** : Attribut qui stocke la valeur de l’étiquette à afficher sur l’appareil GPS Garmin,
- **MP_TYPE** : Attribut qui stocke le type d’objet en fonction de sa géométrie (points : lieux-dits, commerces, POIs / lignes : route, tronçons de cours d’eau, ligne éléctrique / polygone : bâti, surface en eau, végétation) ,
- **EndLevel** : Attribut qui stocke le dernier niveau de zoom pour l’affichage. Si EndLevel = 6, nous visualiserons la donnée du niveau de zoom 6 à 0. Au dessus de 6, la donnée ne sera pas visible. Sachant que le niveau de zoom 0 est le niveau de zoom maximal 1:1.
- **MPBITLEVEL** : XXXXXXXXXXXXXXXX

!!! warning "NOTA"
    ***Il est possible d’ajouter des attributs supplémentaires mais avec cette base là, on peut déjà commencer à compiler une carte au format \*.IMG via des fichiers \*.MP avec cette structure attributaire.***

## **Style de la carte vectorielle - Fichier \*.TYP**

L’une des fonctionnalités les plus utiles des cartes vectorielles Garmin personnalisées **est la possibilité de créer nos propres icônes de points, de lignes et de motifs de remplissage de polygones**, et de les utiliser en plus (ou en remplacement) des ensembles de symbologie standard de Garmin.

Nous les définissons dans un fichier spécial appelé fichier **\*.TYP**, créé directement ou en utilisant un outil tel que [**TYPViewer**](https://sites.google.com/site/sherco40/) — un éditeur de fichier **\*.TYP** pour GPS Garmin — pour convertir un fichier de code texte en un fichier **\*.TYP** spécial. On associe ensuite ces fichiers **\*.TYP** aux cartes qui utilisent notre symbologie personnalisée.

Cette fonctionnalité nous offre une grande flexibilité dans la création de nos propres cartes vectorielles thématiques Garmin. Mais la conception et le codage d’une symbologie **TYP** personnalisée au format texte standard peut être assez pénible. C’est pourquoi j’utiliserai le fichier TYP de base la carte Garmin Topo France v6 Pro sur lequel j’ai apporté quelques modifications légères (Sentier de Grande Randonnée, POI, etc).

!!! Abstract "Ressource"
    Voici quelques fichiers de style **\*.TYP** :

    - [**Garmin Topo France v4**]() : [:fontawesome-solid-download: *Télécharger le fichier de style \*.TYP*](../resources/typ/garmin-topo-france-v4/I0001D1F.typ)
    - [**Garmin Topo France v6**]() : [:fontawesome-solid-download: Télécharger le fichier de style \*.TYP*](../resources/typ/garmin-topo-france-v6/I0002387.typ)
    - [**OpenTopoMap**](https://opentopomap.org/#map=6/47.584/3.098) : [:fontawesome-solid-download: *Télécharger le fichier de style \*.TYP*](../resources/typ/osm/opentopomap.typ)
    - [**Allfab Studio**]() : [:fontawesome-solid-download: *Télécharger le fichier de style \*.TYP*](../resources/typ/allfab-studio/I2023100.typ)