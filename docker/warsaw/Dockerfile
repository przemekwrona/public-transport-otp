FROM openjdk:21-slim

MAINTAINER igeolab.pl
WORKDIR /app

ENV JAVA_OPTS = '-Xmx1G'

COPY otp/2.5.0/otp-*.jar otp.jar
COPY ../../data/warsaw/osm/warsaw.pbf /otp/data/warsaw.pbf
COPY ../../data/warsaw/gtfs/warsaw.gtfs.zip /otp/data/warsaw.gtfs.zip

ENTRYPOINT exec java -Xmx3G $JAVA_OPTS -jar /app/otp.jar --build --serve /otp/data
