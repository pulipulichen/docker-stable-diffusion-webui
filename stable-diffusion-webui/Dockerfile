FROM pytorch/pytorch:2.3.1-cuda12.1-cudnn8-runtime

RUN apt-get update

RUN apt-get install software-properties-common -y
RUN add-apt-repository ppa:deadsnakes/ppa -y

RUN apt-get update
RUN apt install wget git python3 python3-venv libgl1 libglib2.0-0 -y
RUN apt install python-is-python3 -y
RUN python3 -m pip install torch==2.1.2 torchvision==0.16.2 --extra-index-url https://download.pytorch.org/whl/cu121
RUN apt-get install libgoogle-perftools4 libtcmalloc-minimal4 -y
RUN apt-get install python-pip -y
# RUN apt install python3.11 -y

# RUN pip install insightface

# =========================

RUN mkdir -p /app/
WORKDIR /app/

# RUN git clone https://github.com/lllyasviel/stable-diffusion-webui-forge.git

# USER root

CMD ["/app/docker-start.sh"]
