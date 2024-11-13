---
title: Limites des formats .MP et .IMG
icon: material/alert
---

En vrac, à reconstruire...

# **:material-alert: Limites des formats .MP et .IMG**

'24' fait référence à la précision des coordonnées de latitude et de longitude fournies pour l'objet. Lors de la déclaration de l'emplacement des objets dans le monde, la plus grande précision disponible utilise 24 bits de résolution, ce qui se résout avec une précision d'environ 2,5 mètres. Les unités GPS grand public ont une précision de la meilleure boîte d'environ 8 mètres.

mkgmap ne peut produire que des cartes dans un format de plus de 20 ans qui est limité à 24b par coordonnée. Toutes les cartes GARMIN modernes utilisent le format NT (en fait ce n'est pas un format mais plutôt un espace d'état exponatoire de cas particuliers - NT signifie arimage récursif: "NT n'est pas un formaT") qui utilise jusqu'à 32b par coordonnée, c'est pourquoi les cartes GARMIN modernes semblent correctes tandis que toutes les cartes OSM générées avec mkgmap/cgpsmapper semblent cassées.

## Comprendre la visibilité des objets
Notez les lignes de l'en-tête [IMGID] référençant les niveaux :
Levels=4
Level0=24
Level1=22
Level2=20
Level3=18
Ces lignes indiquent à cGPSMapper que notre carte sera définie avec 4 niveaux de détail de zoom. Le niveau le plus bas, ou le zoom à plus petite échelle, est Level0. « 24 » fait référence à la précision des coordonnées de latitude et de longitude fournies pour l'objet. Lors de la déclaration de l'emplacement des objets dans le monde, la plus haute précision disponible utilise 24 bits de résolution, ce qui correspond à une précision d'environ 2,5 mètres. Les unités GPS grand public ont une précision optimale d'environ 8 mètres. L'attribut d'en-tête Level0=24 signifie que les objets déclarés au niveau 0 seront stockés avec une précision de 24 bits, soit une localisation de +- 2,5 m.

Lorsque cGPSMapper compile ce code source au format polonais, il crée une paire de coordonnées 24 bits à utiliser lors de l'affichage des objets au niveau de zoom le plus détaillé, et une paire de coordonnées 22 bits à utiliser lors de l'affichage de cet objet au niveau 1. Ceci est important car un objet dont la visibilité s'étend sur plusieurs niveaux doit avoir une paire de coordonnées dans le fichier de données pour chaque niveau de visibilité. En utilisant de moins en moins de précision aux niveaux de zoom inférieurs, moins d'espace de stockage est nécessaire, ce qui rend le format de fichier plus compact et efficace. cGPSMapper gère tout cela pour nous lors de la compilation, mais c'est un facteur important contribuant à la taille du fichier et à la précision de la carte.

## MP_BIT_LEVEL Global Mapper

La plupart des types intégrés disposent déjà d'une échelle de zoom par défaut à laquelle ils apparaîtront dans les cartes MP créées (cela se traduira par une valeur Levels= pour l'entité dans le fichier MP exporté en fonction des niveaux dans l'en-tête du fichier MP). Pour les types personnalisés et pour les types pour lesquels vous souhaitez modifier l'échelle de zoom par défaut, vous pouvez ajouter un attribut MP_BIT_LEVEL à l'entité elle-même ou à la liste d'attributs par défaut d'un type d'entité. La valeur de cet attribut doit spécifier le niveau de zoom MP minimal auquel une entité doit apparaître. Par exemple, si vous utilisez le paramètre de détail de carte maximal sans fichier modèle, vous obtiendrez une carte avec des niveaux de zoom renseignés à 24, 22 et 20 bits. Si vous souhaitez qu'une entité apparaisse uniquement dans les 2 niveaux de zoom inférieurs de cette carte (les couches de résolution 24 et 22 bits), vous pouvez ajouter un attribut MP_BIT_LEVEL avec une valeur de 22 à votre entité ou à la liste d'attributs par défaut pour ce type, puis cette entité obtiendra une valeur Levels=2 écrite dans le fichier MP exporté. Si votre carte contient moins de détails (par exemple, des niveaux de zoom de 21, 19 et 17 bits), la même entité n'apparaîtra que dans la couche 21 bits la plus détaillée, car les entités sont toujours présentes dans au moins une couche de la carte. Si vous souhaitez qu'une entité s'affiche toujours à tous les niveaux de zoom de votre carte, quels que soient les niveaux de zoom présents, ajoutez simplement un attribut MP_BIT_LEVEL avec une valeur de 1.