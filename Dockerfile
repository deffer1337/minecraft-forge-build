FROM amazoncorretto:17.0.7-alpine

ENV TYPE=FORGEE
ENV VERSION=1.20.1
ENV FORGE_VERSION=47.3.0

WORKDIR /minecraft

RUN apk add wget

RUN wget -O installer.jar https://maven.minecraftforge.net/net/minecraftforge/forge/$VERSION-$FORGE_VERSION/forge-$VERSION-$FORGE_VERSION-installer.jar && \
    java -jar installer.jar --installServer

COPY mods/ ./mods
COPY server.properties ./
COPY eula.txt ./

CMD ["./run.sh"]
