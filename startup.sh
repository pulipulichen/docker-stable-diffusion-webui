#!/bin/bash

script_dir=$(dirname "$0")

# Change the current working directory to the script's location
cd "$script_dir"

touch /tmp/ok.txt

# sudo docker compose down > /dev/null 2>&1
# sudo docker compose up --build -d > /dev/null 2>&1

