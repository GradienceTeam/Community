#!/usr/bin/bash

# Get presets from "next" branch

curl -O https://raw.githubusercontent.com/GradienceTeam/Community/next/official.json
curl -O https://raw.githubusercontent.com/GradienceTeam/Community/next/curated.json

# Compose into one file

jq -s '.[0] * .[1]' official.json curated.json > presets.json

# Push

git config --global user.name 'Gradience Team'
git config --global user.email 'AdwCustomizerTeam@proton.me'
git add presets.json
git commit -m "ci: Generate preset list"
git push
