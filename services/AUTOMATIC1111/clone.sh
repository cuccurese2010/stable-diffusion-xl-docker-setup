#!/bin/bash
set -Eeuox pipefail
mkdir -p /repositories/"$1"
cd /repositories/"$1"
if [ "$(ls -A .)" ]; then
  echo "Directory already exists and is not empty, skipping clone"
  exit 0
fi
git clone "$2" .
git checkout "$3"
rm -rf .git
