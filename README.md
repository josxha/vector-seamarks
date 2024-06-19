# vector-seamarks

This project provides seamarks vector tiles. It uses the data collected by the
OpenSeaMap.

### Previous attempts

There have been some attempts in the past to generate vector tiles from the
OpenSeaMap data. Some of them are:

- https://github.com/OpenSeaMap/vectortiles-generator (last commit Aug 27, 2016)
- https://github.com/osm2vectortiles/osm2vectortiles/issues/402 (archived Dec
  26, 2017)
- https://maps.grade.de/ (some nautical data, data displayed as markers)
- https://osmand.net/ (not feature complete, seamarks near each other missing)

### The focus of this project are the following:

- Reproducibility through documentation and availability of source code and
  assets
- Use of available open source tools to reduce custom code and tools (osmium, tippecanoe, etc.)
- Possibility to generate and self-host tiles
- Support offline usage (small file sizes)
- Usage of modern file formats and standards (.mbtiles, .pmtiles, .geojson,
  .mvt)
- All resources are centralized in one place
- All documentation and discussions are in english to avoid regional
  fragmentation

### Not that important at the moment:

- Not every feature from the OpenSeaMap is currently rendered (
  e.g. [Sectored and Directional Lights](https://wiki.openstreetmap.org/wiki/Seamarks/Sectored_and_Directional_Lights))
- Completely up-to-date tiles (e.g. daily updates)

### Pipeline

1. Download OpenSeaMap data
2. Filter data to only include seamarks
3. Convert data to GeoJSON
4. Generate vector tiles from GeoJSON
5. Serve vector tiles
6. Display vector tiles with MapLibre and by using Mapbox / MapLibre style JSON

## More resources

- https://wiki.openseamap.org/wiki/OpenSeaMap-dev:Vector_chart