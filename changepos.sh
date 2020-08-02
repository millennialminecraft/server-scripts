#!/bin/bash

awk ' BEGIN { RS="" }
      { s="  - Pos: !list_double\n    - !double \"[-+]?[0-9]*\.?[0-9]+\"\n    - !double \"[-+]?[0-9]*\.?[0-9]+\"\n    - !double \"[-+]?[0-9]*\.?[0-9]+\"\n" }
      { r="  - Pos: !list_double\n    - !double \"15.0\"\n    - !double \"100.0\"\n    - !double \"15.0\"\n" }
      FILENAME==ARGV[1] { sub(s,r) ; print }
    ' "$1" > ./temp_file

mv -f ./temp_file "$1"
