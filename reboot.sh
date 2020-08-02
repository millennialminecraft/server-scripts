#!/bin/sh
runuser -l minecraft -c 'screen -S minecraft -p 0 -X stuff "`printf "broadcast This is a test.\r"`"'
