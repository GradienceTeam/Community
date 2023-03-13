# Community

[![Chat on Matrix](https://img.shields.io/matrix/Gradience:matrix.org?color=%230dbd8b&label=Gradience&logo=matrix&logoColor=white)](https://matrix.to/#/#Gradience:matrix.org)
[![Chat on Discord](https://dcbadge.vercel.app/api/server/4njFDtfGEZ?style=flat&theme=default-inverted)](https://discord.com/invite/4njFDtfGEZ)

Add your Presets to `Explore` tab

# How to add

Your Preset can be stored in:

1. this `repo`
2. in your `repo`

## Preset stored in the official `repo` (recommended)

In your Pull Request, add your Preset in the `curated` folder

Don't touch to `curated.json` because it's automatically generated.

## Preset stored somewhere else

### What's a repo ?

A repo is a file where you list all of your presets. It can be stored everywhere after creating your repo, you can share it and enable it in `Preferences`

Store a file with a similar formatting to `curated.json`, it can be everywhere (on your server, on a GitHub repo, on GitHub gist, etc)

```json
{
  "My Awesome Preset": "https://my.website.me/my-awesome-preset.json"
}
```
Add a link to your `repo` in `Preferences` > `Repo`

# Preset example
```json
{
    // The name should be written as shown, in PascalCase, but with spaces between words
    "name": "Preset Name", 
    "variables": {
        "accent_color": "#78aeed",
        "accent_bg_color": "#3584e4",
        "accent_fg_color": "#ffffff",
        "destructive_color": "#ff7b63",
        "destructive_bg_color": "#c01c28",
        "destructive_fg_color": "#ffffff",
        "success_color": "#8ff0a4",
        "success_bg_color": "#26a269",
        "success_fg_color": "#ffffff",
        "warning_color": "#f8e45c",
        "warning_bg_color": "#cd9309",
        "warning_fg_color": "rgba(0, 0, 0, 0.8)",
        "error_color": "#ff7b63",
        "error_bg_color": "#c01c28",
        "error_fg_color": "#ffffff",
        "window_bg_color": "#242424",
        "window_fg_color": "#ffffff",
        "view_bg_color": "#1e1e1e",
        "view_fg_color": "#ffffff",
        "headerbar_bg_color": "#303030",
        "headerbar_fg_color": "#ffffff",
        "headerbar_border_color": "#ffffff",
        "headerbar_backdrop_color": "@window_bg_color",
        "headerbar_shade_color": "rgba(0, 0, 0, 0.36)",
        "card_bg_color": "rgba(255, 255, 255, 0.08)",
        "card_fg_color": "#ffffff",
        "card_shade_color": "rgba(0, 0, 0, 0.36)",
        "dialog_bg_color": "#383838",
        "dialog_fg_color": "#ffffff",
        "popover_bg_color": "#383838",
        "popover_fg_color": "#ffffff",
        "shade_color": "rgba(0,0,0,0.36)",
        "scrollbar_outline_color": "rgba(0,0,0,0.5)"
    },
    "palette": {
        "blue_": {
            "1": "#99c1f1",
            "2": "#62a0ea",
            "3": "#3584e4",
            "4": "#1c71d8",
            "5": "#1a5fb4"
        },
        "green_": {
            "1": "#8ff0a4",
            "2": "#57e389",
            "3": "#33d17a",
            "4": "#2ec27e",
            "5": "#26a269"
        },
        "yellow_": {
            "1": "#f9f06b",
            "2": "#f8e45c",
            "3": "#f6d32d",
            "4": "#f5c211",
            "5": "#e5a50a"
        },
        "orange_": {
            "1": "#ffbe6f",
            "2": "#ffa348",
            "3": "#ff7800",
            "4": "#e66100",
            "5": "#c64600"
        },
        "red_": {
            "1": "#f66151",
            "2": "#ed333b",
            "3": "#e01b24",
            "4": "#c01c28",
            "5": "#a51d2d"
        },
        "purple_": {
            "1": "#dc8add",
            "2": "#c061cb",
            "3": "#9141ac",
            "4": "#813d9c",
            "5": "#613583"
        },
        "brown_": {
            "1": "#cdab8f",
            "2": "#b5835a",
            "3": "#986a44",
            "4": "#865e3c",
            "5": "#63452c"
        },
        "light_": {
            "1": "#ffffff",
            "2": "#f6f5f4",
            "3": "#deddda",
            "4": "#c0bfbc",
            "5": "#9a9996"
        },
        "dark_": {
            "1": "#77767b",
            "2": "#5e5c64",
            "3": "#3d3846",
            "4": "#241f31",
            "5": "#000000"
        }
    },
    "custom_css": {
        "gtk4": "",
        "gtk3": ""
    }
}
```
