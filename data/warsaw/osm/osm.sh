#!/bin/sh

osmium tags-filter mazowieckie-latest.osm.pbf w/highway -o mazowieckie-ways.osm.pbf
osmium extract -b 20.752804,52.033339,21.321793,52.452829 mazowieckie-ways.osm.pbf -o warsaw.pbf
rm mazowieckie-ways.osm.pbf
