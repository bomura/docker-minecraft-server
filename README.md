# docker-minecraft-server

## docker-compose build(not required)
docker-compose.yml
- MC_SRV_VER: minecraft server version [e.g. 1.13.2]

## environment
docker-compose.yml
- EULA: The Minecraft End User License Agreement [true|false]
- OP_USER: Operater [MinecraftID]

## How to use
docker-compose.ymlを編集し、EULAをtrueに設定します。
また、必要に応じてOP_USERを設定します。

```
docker-compose up -d
```
