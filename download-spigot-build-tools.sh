#!/bin/bash
echo "Retrieving Spigot Build..."
echo "WARNING: This script will pull and build for spigot version 1.15.2."
echo "Cancel this script now (Ctrl + C) and change the --rev flag if you want a different version."
read -p "Press [Enter] to continue with installation."
installDir="/opt/spigot"
cd $installDir

curl https://hub.spigotmc.org/jenkins/job/BuildTools/lastSuccessfulBuild/artifact/target/BuildTools.jar > BuildTools.jar
if [ $? -ne 0 ] ; then
	echo "Error with Curl...Aborting."
	exit 1
fi

java -jar BuildTools.jar --rev 1.15.2
if [ $? -ne 0 ] ; then
	echo "Error running jar...Aborting"
	exit 1
fi

cd ..
chown -R minecraft:minecraft-admin $installDir

mv $installDir/spigot.jar $installDir/spigot.jar.old$(date +%d-%m-%Y)

mv $installDir/spigot-1.15.2*.jar $installDir/spigot.jar

echo "Build completed."

exit 0
