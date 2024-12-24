#!/bin/bash

# python -m ensurepip --default-pip
# "/app/stable-diffusion-webui/venv/bin/python" -m ensurepip --default-pip
# "/app/stable-diffusion-webui/venv/bin/python" -m pip install torch==2.1.2 torchvision==0.16.2 --extra-index-url https://download.pytorch.org/whl/cu121

# /app/webui.sh -f --xformers --listen --enable-insecure-extension-access --api --skip-torch-cuda-test


script_dir=$(dirname "$0")

# Change the current working directory to the script's location
cd "$script_dir"

cd ComfyUI

python main.py --listen 0.0.0.0