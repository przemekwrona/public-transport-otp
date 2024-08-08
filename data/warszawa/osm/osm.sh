#!/bin/sh

osmium tags-filter mazowieckie-latest.osm.pbf w/highway -o ways.osm.pbf
osmium extract -b 20.752804,52.033339,21.321793,52.452829 ways.osm.pbf -o warszawa.pbf
rm ways.osm.pbf
