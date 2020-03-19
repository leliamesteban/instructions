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

# Generate the HTML files

npx eleventy

# Run the application

./neutralino-linux
