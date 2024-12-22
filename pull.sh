#!/bin/bash

script_dir=$(dirname "$0")

# Change the current working directory to the script's location
cd "$script_dir"

git reset --hard
git pull