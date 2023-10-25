#!/usr/bin/bash

# Generate lists of presets

python3 scripts/update-official.py
python3 scripts/update-curated.py

# Push

git config --global user.name 'Gradience Team'
git config --global user.email 'AdwCustomizerTeam@proton.me'
git add official.json curated.json
git commit -m "ci: Generate preset list"
git push
