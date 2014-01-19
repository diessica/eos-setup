#!/bin/bash

# Prompting
read -p "What package manager do you use? (E.g. apt-get, aptitude) | " packageManager

"$packageManager" install rhythmbox
