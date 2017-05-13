#!/bin/bash

SOURCES=$(find . -name '*.applescript')
DEST_DIR=~/Applications

IFS=$'\n'
for src in ${SOURCES}; do
  app=$(basename "${src}" .applescript).app
  osacompile -o "${DEST_DIR}/${app}" "${src}"
done

