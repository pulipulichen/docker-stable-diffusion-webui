#!/bin/bash

script_dir=$(dirname "$0")

# Change the current working directory to the script's location
cd "$script_dir"

full_path=$(realpath "$0")
base_dir=$(dirname "$full_path")
cd "$base_dir"

# =================================================================

# touch /tmp/ok.txt
sleep 30

# ===========

cd "$base_dir"
# pwd
cd ./stable-diffusion-webui-forge/

# sudo docker compose down > /dev/null 2>&1
# sudo docker compose up --build -d > /dev/null 2>&1

# ===========

# sudo docker compose down > /dev/null 2>&1
# sudo docker compose up --build -d > /dev/null 2>&1

