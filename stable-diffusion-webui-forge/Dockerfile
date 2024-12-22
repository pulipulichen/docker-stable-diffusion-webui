FROM pytorch/pytorch:2.3.1-cuda12.1-cudnn8-runtime

RUN apt-get update
RUN apt-get install -y git

RUN mkdir /app
WORKDIR /app

RUN git clone https://github.com/lllyasviel/stable-diffusion-webui-forge.git

USER root

CMD ["/app/stable-diffusion-webui-forge/webui.sh"]