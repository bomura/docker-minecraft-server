FROM openjdk:8-jre-alpine
LABEL maintainer 'bomura'

WORKDIR /minecraft-server

RUN apk add curl

RUN curl -O https://files.minecraftforge.net/maven/net/minecraftforge/forge/1.12.2-14.23.5.2768/forge-1.12.2-14.23.5.2768-installer.jar \
 && java -jar forge-1.12.2-14.23.5.2768-installer.jar nogui --installServer

RUN mkdir -p mods \
 && curl -L -o ./mods/aether_ii-1.12.2-1.1.12.jar https://minecraft.curseforge.com/projects/the-aether-ii/files/2630226/download \
 && curl -L -o ./mods/orbis_api-1.12.2-1.1.11.jar https://minecraft.curseforge.com/projects/orbis-api/files/2630161/download

COPY entrypoint-minecraft-server.sh /entrypoint-minecraft-server.sh

EXPOSE 25565

ENTRYPOINT ["/entrypoint-minecraft-server.sh"]
CMD ["java", "-jar", "forge-1.12.2-14.23.5.2768-universal.jar", "nogui"]
