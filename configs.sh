#!/bin/bash
# Copy all configs to server installation folder


echo "This is PROD script.  If not correct, please Ctl-C, else Enter."
read -p "Press [Enter] to continue..."

worldDir="/opt/spigot/world"
serverDir="/opt/spigot"
pluginDir="/opt/spigot/plugins"
gitDir="/home/minecraft/git/mcmafia"
worldName="world"

cd $gitDir
git pull

#AdminAnything
cd $gitDir/AdminAnything
yes | cp -f ./* $pluginDir/AdminAnything/
cd $gitDir
echo "Copied AdminAnything files..."

#AuctionHouse
cd $gitDir/AuctionHouse
yes | cp -f ./* $pluginDir/AuctionHouse/
cd $gitDir
echo "Copied AuctionHouse files..."

#Autorank
cd Autorank
yes | cp -f ./* $pluginDir/Autorank/
cd $gitDir
echo "Copied autorank files..."

#BetterSleeping
cd BetterSleeping
yes | cp -f ./* $pluginDir/BetterSleeping3/
cd $gitDir
echo "Copied BetterSleeping files..."

#BigDoors
cd BigDoors
yes | cp -f ./* $pluginDir/BigDoors/
cd $gitDir
echo "Copied BigDoors files..."

#DeluxeCombat
cd DeluxeCombat
yes | cp -f ./* $pluginDir/DeluxeCombat/
cd $gitDir
echo "Copied DeluxeCombat files..."

#DiscordSRV
cd DiscordSRVprod
yes | cp -f ./* $pluginDir/DiscordSRV/
cd $gitDir
echo "DiscordSRV config copied..."

#EpicWorldGenerator
cd EpicWorldGenerator
yes | cp -f ./* $pluginDir/EpicWorldGenerator/
cd $gitDir
echo "Copied EWG files..."

# Essentials copy
cd Essentials
yes | cp -f ./* $pluginDir/Essentials/
cd $gitDir
echo "Copied Essentials files..."

#Factions
cd Factions
yes | cp -f ./* $pluginDir/Factions/
cd $gitDir
echo "Copied SaberFactions files..."

#GroupManager
cd GroupManager
yes | cp -f ./globalgroups.yml $pluginDir/GroupManager/
yes | cp -f ./groups.yml $pluginDir/GroupManager/worlds/$worldName/
yes | cp -f ./users.yml $pluginDir/GroupManager/worlds/$worldName/
cd $gitDir
echo "Copied GroupManager files..."

#GUIShop
cd GUIShop
yes | cp -f ./* $pluginDir/GUIShop/
cd $gitDir
echo "Copied GUIShop files..."

mcMMO
cd mcMMO
yes | cp -f ./* $pluginDir/mcMMO/
cd $gitDir
echo "Copied mcmmo files..."

#MessageAnnouncer
cd MessageAnnouncer
yes | cp -f ./* $pluginDir/MessageAnnouncer/
cd $gitDir
echo "Copied MessageAnnouncer files..."

#multiverse
cd Multiverse
yes | cp -f ./* $pluginDir/Multiverse-Core/
cd $gitDir
echo "Copied multiverse files..."

#oh_the_dungeons
cd OhTheDungeons
yes | cp -f ./* $pluginDir/Oh_the_dungeons_youll_go/
cd $gitDir
echo "Copied otd files..."

#Spartan
cd Spartan
yes | cp -rf ./* $pluginDir/Spartan/
cd $gitDir
echo "Copied Spartan files..."


#spigot
cd spigot
yes | cp -f ./* $serverDir
cd $gitDir
echo "spigot config coppied..."

#Statz
cd Statz
yes | cp -f ./* $pluginDir/Statz/
cd $gitDir
echo "statz config coppied..."

echo "Coinfig copy done"

#UltimateAutoRestart
cd UltimateAutoRestart
yes | cp -f ./* $pluginDir/UltimateAutoRestart/
cd $gitDir
echo "Copied UltimateAutoRestart files..."

#WorldEdit
cd WorldEdit
yes | cp -rf ./* $pluginDir/WorldEdit/
cd $gitDir
echo "Copied world edit files..."

#world
cd world
yes | cp -f ./* $worldDir
cd $gitDir
echo "Copied world settings files..."

echo "config copy complete."
