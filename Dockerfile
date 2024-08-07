FROM openjdk:21-slim

MAINTAINER igeolab.pl
WORKDIR /app

ENV JAVA_OPTS = ''

COPY otp/otp-*.jar /app/otp.jar
COPY warsaw/data/warsaw/osm/warsaw.pbf /otp/data/warsaw.pbf
COPY warsaw/data/warsaw/gtfs/warsaw.gtfs.zip /otp/data/warsaw.gtfs.zip

ENTRYPOINT exec java -Xmx3G $JAVA_OPTS -jar /app/otp.jar --build --serve /otp/data
