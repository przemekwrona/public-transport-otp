#!/bin/sh

osmium tags-filter ../poland-latest.osm.pbf w/highway -o ways.osm.pbf
osmium extract -b 16.623681,52.281537,17.152918,52.527432 ways.osm.pbf -o poznan.pbf
rm ways.osm.pbf
