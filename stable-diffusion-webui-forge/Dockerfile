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

#RUN pip install https://download.pytorch.org/whl/nightly/rocm5.2/torch-2.0.0.dev20230209%2Brocm5.2-cp310-cp310-linux_x86_64.whl https://download.pytorch.org/whl/nightly/rocm5.2/torchvision-0.15.0.dev20230209%2Brocm5.2-cp310-cp310-linux_x86_64.whl
RUN pip install -q bitsandbytes

# =========================

RUN mkdir -p /app/stable-diffusion-webui-forge
WORKDIR /app/

# RUN git clone https://github.com/lllyasviel/stable-diffusion-webui-forge.git

# USER root

CMD ["/app/stable-diffusion-webui-forge/webui.sh", "-f", "--xformers"]
