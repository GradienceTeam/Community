curated=("yaru" "tango" "alpha-black" "alpha-mac" "alpha-dark" "catppuccin-frappe" "catppuccin-latte" "cyberhack" "crystal-clear" "dracula")
official=("tango")

BASE_URL="https://raw.githubusercontent.com/gradience-presets"
BRANCH="main"
DEFAULT_FILENAME="preset.json"

mkdir -p curated

echo "{" > curated.json
i=0
for preset in "${curated[@]}"; do
  i=$((i+1))
  url="$BASE_URL/$preset/$BRANCH/$DEFAULT_FILENAME"
  wget "$url" -O "curated/${preset}.json" -a wget.log
  if [[ $i == "${#curated[@]}" ]]; then
    echo "  \"$preset\": \"$url\"" >> curated.json
  else
    echo "  \"$preset\": \"$url\"," >> curated.json
  fi
done
echo "}" >> curated.json

mkdir -p official

echo "{" > official.json
i=0
for preset in "${official[@]}"; do
  i=$((i+1))
  url="$BASE_URL/$preset/$BRANCH/$DEFAULT_FILENAME"
  wget "$url" -O "official/${preset}.json" -a wget.log
  if [[ $i == "${#official[@]}" ]]; then
    echo "  \"$preset\": \"$url\"" >> official.json
  else
    echo "  \"$preset\": \"$url\"," >> official.json
  fi
done
echo "}" >> official.json
