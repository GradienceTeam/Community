#!/usr/bin/python3

# Change the look of Adwaita, with ease
# Copyright (C) 2022 Gradience Team
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program. If not, see <https://www.gnu.org/licenses/>.

# Created by @dominichayesferen for Gradience Team

import os
import json

themeslist = {} #Dictionaries needs creating before you append to them, otherwise it'll UnboundLocalError

for i in os.listdir("curated"): #Lists all files (and folders, but it doesn't matter) inside ./curated
    with open("curated/" + i, 'r') as pa: #Go through each file
        #NOTE: There is no .json filter in the above code - be aware that if any non-json file were to be added to that folder, json.loads will likely raise an exception
        palette = json.loads(pa.read()) #Use json module to convert the file's data to a dictionary
        themeslist[palette["name"]] = "https://github.com/GradienceTeam/Community/raw/next/curated/" + i #We know where they should be located, so we just put their filenames at the end of the link, and put that whole combined string into the themeslist dictionary, with its key being the in-palette-JSON name of the palette

themenames = [] #Lists needs creating before you append to them, otherwise it'll UnboundLocalError
for i in themeslist: #Get the keys of the dictionary in list format
    themenames.append(i) #Self-explanatory - adds the readable name to the themenames list
themenames.sort() #.sort() alphabetically sorts the list it is ran on (note that .sort() cannot do X = X.sort(), as it'll set X to None)

organisedthemeslist = {} #You get the idea with empty variables.
for i in themenames: #For each theme's name, in the order .sort() caused
    organisedthemeslist[i] = themeslist[i] #Append the appropriate value from themeslist to organisedthemeslist - this essentially alphabetically sorts the dictionary on a key-by-key basis

with open("curated.json", 'w') as fp: #This opens the file for writing. You might be wondering why there's no .close() - with "with open(...)", the file is automatically closed at the end of the with statement's execution
    fp.write(json.dumps(organisedthemeslist, indent=4)) #Save changes to curated.json
