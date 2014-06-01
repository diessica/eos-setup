#!/bin/bash

# Prompting
read -p "What package manager do you use? (E.g. apt-get, aptitude) | " packageManager

# Development
"$packageManager" install vim

# Browser
"$packageManager" install chromium-browser

# Media
"$packageManager" install rhythmbox

# Tools
"$packageManager" install elementary-tweaks
"$packageManager" install terminator
