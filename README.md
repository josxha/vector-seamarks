# vector-sea marks

This project provides sea mark vector tiles. It uses the data collected by the
OpenSeaMap.

### Why vector tiles?

- Smaller file sizes
- Better suited for offline usage
- Support for high-DPI displays
- Keep the sea marks upright when rotating the map
- Possibility to change the style of the sea marks

### Previous attempts

There have been some attempts in the past to generate vector tiles from the
OpenSeaMap data. Some of them are:

- https://github.com/OpenSeaMap/vectortiles-generator (last commit Aug 27, 2016)
- https://github.com/osm2vectortiles/osm2vectortiles/issues/402 (archived Dec
  26, 2017)
- https://osmand.net/ (not feature complete, sea marks near each other missing)
- https://web.archive.org/web/20210624173209/https://www.openseachart.org/doku.php/enc (ENC format, links to government data, not available anymore)
- https://www.elwis.de/DE/Service/Inland-ENC-der-WSV/Inland-ENC-der-WSV-node.html (ENC format, German waterways)
- https://github.com/tilery/OpenRiverboatMap (CartoCSS style, only waterways)
- https://wiki.openseamap.org/wiki/OpenSeaMap-dev:Android/Victor (Android app, not available anymore)
- https://wiki.openstreetmap.org/wiki/User:Kannix/vector-tiles, https://maps.grade.de/ (only waterways)

### The focus of this project are the following:

- Reproducibility through documentation and availability of source code and
  assets
- Use of available open source tools to reduce custom code and tools (osmium, tippecanoe, etc.)
- Possibility to generate and self-host tiles
- Support offline usage (small file sizes)
- Usage of modern file formats and standards (MBTiles, PMTiles, GeoJSON,
  MVT, etc.)
- Keep all resources centralized in one place (this GitHub repository)
- Performant rendering of sea mark tiles
- All documentation and discussions are in english to avoid regional
  fragmentation
- Support for consumer devices (smartphones, tablets and laptops)

### Not that important at the moment:

- Not every feature from the OpenSeaMap is currently rendered (
  e.g. [Sectored and Directional Lights](https://wiki.openstreetmap.org/wiki/Seamarks/Sectored_and_Directional_Lights))
- Completely up-to-date tiles (e.g. daily updates)
- Plotters like Garmin or Raymarine are not supported

### Pipeline

1. Download OpenSeaMap data
2. Filter data to only include sea marks (`seamark:type=` exists)
3. Convert data to GeoJSON
4. Generate vector tiles from GeoJSON
5. Serve vector tiles
6. Display the tiles with by using Mapbox / MapLibre style JSON

## More resources
### Symbols

- https://github.com/OpenSeaMap/renderer/tree/master/searender/symbols
- https://github.com/OpenNauticalChart/josm/tree/master/icons/svg

### Discussions & Articles

- https://wiki.openseamap.org/wiki/OpenSeaMap-dev:Vector_chart
- https://forum.openseamap.org/viewtopic.php?id=2304
