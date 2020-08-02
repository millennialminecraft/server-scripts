#!/bin/bash
serverModDir="/opt/spigot/plugins"

if [ "$EUID" -ne 0 ] ; then
	echo "You must run this script with Sudo.  Aborting."
	exit 1
fi

modDir="/home/$SUDO_USER/mods"

if [ ! -d "$modDir" ] ; then
	echo "You are missing the mods folder. Copy mods to /home/$SUDO_USER/mods"
	exit 1
fi

if [ ! "$(ls -A $modDir)" ] ; then
	echo "You have no mods to deploy...Aborting"
	exit 1
fi

chown -R minecraft:minecraft-admin $modDir/*

echo "Deploy mods from $modDir..."
mv $modDir/* $serverModDir/
if [ $? -ne 0 ] ; then
	echo "Error moving files...Aborting"
	exit 1
fi

echo "Deploy complete."
