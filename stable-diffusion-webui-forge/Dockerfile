FROM pytorch/pytorch:2.3.1-cuda12.1-cudnn8-runtime

RUN apt-get update
RUN apt-get install -y git

RUN apt-get install libgoogle-perftools4 libtcmalloc-minimal4 -y
RUN apt-get install -y bc 

RUN pip install xformers==0.0.28.post3
RUN apt-get install libgl1 -y
RUN apt-get install -y libglib2.0-0 libsm6 libxrender1 libxext6

RUN apt install nvidia-cuda-toolkit -y
RUN pip install basicsr


RUN mkdir -p /app/stable-diffusion-webui-forge
WORKDIR /app/

# RUN git clone https://github.com/lllyasviel/stable-diffusion-webui-forge.git

# USER root

CMD ["/app/stable-diffusion-webui-forge/webui.sh", "-f", "--xformers"]
