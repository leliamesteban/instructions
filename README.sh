#!/bin/bash

# Directory structure

## views/*.pug

### Frontend, built using pugjs, a template language to avoid writing HTML

## storage

### Database

## .eleventy.js

### Configuration for Eleventy, the static site generator used to convert to HTML

## app/assets

### Assets such as javascript, css, images

## settings-*.json

### Configuration for Neutralino, a framework to build cross platform apps using web technologies

if [[ $# -gt 0 ]]
then
  cat <<< "$(jq '.mode |= "window"' < app/settings.json)" > app/settings.json
  echo "Running in" $(jq '.mode' < app/settings.json) "mode"
  echo "Generating the HTML files\n"
  npx eleventy
  echo Running the application
  ./neutralino-linux
fi
