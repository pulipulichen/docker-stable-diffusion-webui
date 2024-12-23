FROM pytorch/pytorch:2.3.1-cuda12.1-cudnn8-runtime

RUN apt-get update

RUN apt-get install software-properties-common -y
RUN add-apt-repository ppa:deadsnakes/ppa -y

RUN apt-get update
RUN apt install wget git python3 python3-venv libgl1 libglib2.0-0 -y
RUN apt-get install -y pip
# RUN apt install python3.11 -y

# RUN pip install insightface

# =========================

RUN mkdir -p /app/
WORKDIR /app/

RUN wget -q https://raw.githubusercontent.com/AUTOMATIC1111/stable-diffusion-webui/master/webui.sh
RUN chmod +x /app/webui.sh

# RUN git clone https://github.com/lllyasviel/stable-diffusion-webui-forge.git

# USER root

CMD ["/app/docker-start.sh"]
