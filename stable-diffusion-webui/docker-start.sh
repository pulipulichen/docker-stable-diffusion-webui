#!/bin/bash

"/app/stable-diffusion-webui/venv/bin/python" -m pip install torch==2.1.2 torchvision==0.16.2 --extra-index-url https://download.pytorch.org/whl/cu121

# /app/webui.sh -f --xformers --listen --enable-insecure-extension-access --api --skip-torch-cuda-test