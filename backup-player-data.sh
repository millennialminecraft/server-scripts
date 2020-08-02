#!/bin/bash
#backup player data to git

serverDir="/opt/spigot"
pluginDir="$serverDir/plugins"
essentialsDir="$pluginDir/Essentials/userdata"
playerServer="$serverDir/world/playerdata"
gitDir = /home/minecraft/git/mcmafia/players


#Essentials

cp -f $essentialsDir/* /home/minecraft/git/mcmafia/players/essentials/
echo "Copied essentials player data."

#server
cp -f $playerServer/* /home/minecraft/git/mcmafia/players/server/
echo "Copied world player data"

