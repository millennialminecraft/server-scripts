#!/bin/bash

export EDITOR=./changepos.sh

for f in $1*.dat
do
echo $f
  /home/minecraft/.local/bin/nbtedit $f
done
