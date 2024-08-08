#!/bin/sh

osmium tags-filter ../poland-latest.osm.pbf w/highway -o ways.osm.pbf
osmium extract -b 16.725488,50.995704,17.213044,51.191029 ways.osm.pbf -o poznan.pbf
rm ways.osm.pbf
