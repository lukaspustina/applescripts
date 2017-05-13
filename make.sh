#!/bin/bash

SOURCES=$(find . -name '*.scpt')
DEST_DIR=~/Applications

IFS=$'\n'
for src in ${SOURCES}; do
  app=$(basename "${src}" .scpt).app
  osacompile -o "${DEST_DIR}/${app}" "${src}"
done

