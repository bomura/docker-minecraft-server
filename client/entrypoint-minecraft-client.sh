#!/bin/sh

mkdir -p forge mods
curl -L -o ./forge/forge-1.12.2-14.23.5.2768-installer.jar https://files.minecraftforge.net/maven/net/minecraftforge/forge/1.12.2-14.23.5.2768/forge-1.12.2-14.23.5.2768-installer.jar
curl -L -o ./mods/aether_ii-1.12.2-1.1.12.jar https://minecraft.curseforge.com/projects/the-aether-ii/files/2630226/download
curl -L -o ./mods/orbis_api-1.12.2-1.1.11.jar https://minecraft.curseforge.com/projects/orbis-api/files/2630161/download

exec $*
