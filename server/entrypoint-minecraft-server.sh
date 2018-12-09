#!/bin/sh

if [ "${EULA}" = "true" ]
then
  echo 'eula=true' > eula.txt
fi

if [ ! -z ${OP_USER} ]
then
  ops=$( curl https://api.mojang.com/users/profiles/minecraft/${OP_USER} )
  ops=${ops:0:15}-${ops:15:4}-${ops:19:4}-${ops:23:4}-${ops:27}
  ops=${ops//id/uuid}
  ops="[${ops%\}},\"level\":4,\"bypassesPlayerLimit\":true}]"

  echo ${ops} > /dev/stdout
  echo ${ops} > ops.json
fi

if [ ! -e './world/data' ]
then
    curl -LO 'https://minecraft.curseforge.com/projects/skyblock-3/files/2455897/download'
    unzip download
    mv './Skyblock 3.07'/* './world/'
    rm -rf './Skyblock 3.07'
fi


exec $*
