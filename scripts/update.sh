curated=("yaru")
official=("tango")

BASE_URL="https://raw.githubusercontent.com/gradience-presets"
BRANCH="main"
DEFAULT_FILENAME="preset.json"

mkdir -p curated
for preset in "${curated[@]}"; do
  wget "$BASE_URL/$preset/$BRANCH/$DEFAULT_FILENAME" -O "curated/${preset}.json" -a wget.log
done

mkdir -p official
for preset in "${official[@]}"; do
  wget "$BASE_URL/$preset/$BRANCH/$DEFAULT_FILENAME" -O "official/${preset}.json" -a wget.log
done
