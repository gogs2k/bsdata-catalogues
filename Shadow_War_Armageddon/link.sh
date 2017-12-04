#!/bin/bash

for f in ./*; do
  f="${f//.\/}"
  f="${f//\ /\\ }"
  echo "$f"
  if [ "$f" != "link.sh" ]; then
    eval "rm ~/Dropbox/Apps/BattleScribe/data/Shadow\ War\ Armageddon/$f"
    sleep 1
    eval "link $f ~/Dropbox/Apps/BattleScribe/data/Shadow\ War\ Armageddon/$f"
  fi
done
