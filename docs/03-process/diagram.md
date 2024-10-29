---
title: Diagramme
icon: simple/diagramsdotnet
---

# **03-01/ Processus de création**

**Entrons dans le vif du sujet !** 

Voici un **diagramme** qui schématise les différentes étapes qu'il faut accomplir afin de créer une carte Garmin personnalisée.

Pour accéder à la documentation du noeud, cliquez dessus :material-cursor-default-click: !

```mermaid
---
title : Diagramme
---
flowchart LR
    subgraph RASTER - DONNÉES SOURCE
        direction LR
        dem["30-Meter SRTM"]
    end
    subgraph VECTEUR - DONNÉES SOURCE
        direction LR
        bdtopo["IGN BDTOPO®"]
        osm["OpenStreetMap"]
        sentier["Sentier de<br />randonnées"]
    end
    subgraph FME - Manipulation des données VECTEUR
        direction LR
        prepaShpFmeGeomReprojection{<b>Reprojection<br />2154->4326</b>}
        prepaShpFmeAttributeManager{<b>Gestion attributaire :</b><br /><i>NAME</i><br /><i>MP_TYPE</i><br /><i>EndLevel</i><br /><i>MPBITLEVEL</i><br />*}
        prepaShpFmeExport{<b>Export</b><br />ESRI Shapefile}
    end

    subgraph GLOBAL MAPPER - Manipulation des données RASTER
        direction LR
        dem2contours{<b>Création des<br />courbes de niveau</b><br />Pas de 10 mètres}
        contoursAttributeManager{<b>Gestion attributaire :</b><br /><i>NAME</i><br /><i>MP_TYPE</i><br /><i>EndLevel</i><br /><i>MPBITLEVEL</i>}
        contoursShpExport{<b>Export</b><br />ESRI Shapefile}
    end

    subgraph GARMIN - STYLE DE CARTE
        direction LR
        garmintyp["TYP"]
    end

    bdtopo --> prepaShpFmeGeomReprojection
    osm --> prepaShpFmeGeomReprojection
    sentier --> prepaShpFmeGeomReprojection
    prepaShpFmeGeomReprojection --> prepaShpFmeAttributeManager --> prepaShpFmeExport
    dem --> dem2contours --> contoursAttributeManager --> contoursShpExport


    click bdtopo href "/tech-stack/data/#ign-bd-topo" _blank
    click osm href "/tech-stack/data/#openstreetmap" _blank
    click sentier href "/tech-stack/data/#sentier-de-randonnees-gr" _blank
    click dem href "/garmin-ign-bdtopo-map/tech-stack/data/#30-meter-srtm" _blank
    click dem2contours href "/garmin-ign-bdtopo-map/tech-stack/data/#30-meter-srtm" _blank
    

    
```

<figure markdown>
  <figcaption>Cliquez sur les noeuds pour accéder à leur documentation</figcaption>
</figure>

[comment]: <> (http://mermaid.js.org/syntax/flowchart.html)