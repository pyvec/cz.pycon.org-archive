#!/bin/bash

# Make a static copy of pycon.cz website before a new year edition

if [ -z $1 ]; then
    echo "First argument has to be a year to backup (\"2018\" for example)"
    exit 1
fi

wget \
    --recursive \
    -l inf \
    --page-requisites \
    --html-extension \
    --domains cz.pycon.org \
    --no-parent \
    --convert-links \
    --no-hsts \
    -nH --cut-dirs 1 \
    -P "$1" \
    https://cz.pycon.org/"$1"/

# Remove index.html from links in html
find "$1" -name "*.html" -type f -exec sed -i 's|href="\([^"]*\)/index\.html"|href="\1/"|g; s|href="\([^:"]*\)/index\.html"|href="\1/"|g' {} \;
