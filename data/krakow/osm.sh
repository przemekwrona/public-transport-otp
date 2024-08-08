#!/bin/sh

osmium tags-filter ../poland-latest.osm.pbf w/highway -o ways.osm.pbf
osmium extract -b 19.750635,49.948676,20.171110,50.161206 ways.osm.pbf -o krakow.pbf
rm ways.osm.pbf
