## Sprites

A Spritesheet gets generated from the raw SVG icons that can be used for the
map.
The icons are mostly from the OpenSeaMap and OpenNauticalChart projects but
edited to have the same size and renamed.

All names are based on the INT-1 standard and the used tags in the OpenSeaMap
data.

- [OpenSeaMap INT-1 cross-references](https://wiki.openstreetmap.org/wiki/Seamarks/INT-1_Cross_Reference).
- [INT-1 Symbols, India, Edition 2, 2011](https://hydrobharat.gov.in/wp-content/uploads/2019/07/INP_5020_INT1.pdf)
- [INT-1 Symbols, UK, Edition 8, 2020](https://www.hydro.navy.mi.th/standard/INT1_EN_Ed8.pdf)

## Icon sources

- https://github.com/OpenSeaMap/renderer/tree/master/searender/symbols
- https://github.com/OpenNauticalChart/josm/tree/master/icons/svg

### Generate sprite sheets

```bash
spritezero seamarks-sprites svg
spritezero --retina seamarks-sprites svg
```