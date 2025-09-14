FROM nvidia/cuda:12.9.1-cudnn-devel-ubuntu22.04

# Set noninteractive mode for apt
ENV DEBIAN_FRONTEND=noninteractive

# Update & install required packages
RUN apt-get update && apt-get -y upgrade
RUN apt-get install -y \
    nano \
    curl \
    git \
    htop \
    nvtop \
    zlib1g \
    build-essential \
    software-properties-common \
    zip

RUN apt-get install -y python3-pip

RUN pip install -U pip wheel

RUN pip install tqdm==4.67.1
RUN pip install beartype==0.21.0
RUN pip install omegaconf==2.3.0

RUN pip install pillow==11.0.0
RUN pip install opencv-python==4.12.0.88
RUN pip install scikit-image==0.25.2
RUN pip install albumentationsx==2.0.10

RUN pip install scikit-learn==1.7.1

RUN pip install wandb==0.21.1
RUN pip install tensorboard==2.20.0
RUN pip install datasets==4.0.0

RUN pip3 install torch torchvision --index-url https://download.pytorch.org/whl/cu129
RUN pip install einops==0.8.1
RUN pip install ema-pytorch==0.7.7
RUN pip install pytorch-warmup==0.2.0
RUN pip install pytorch-custom-utils==0.0.21
RUN pip install memory-efficient-attention-pytorch==0.1.6
RUN pip install sentencepiece==0.2.1
RUN pip install transformers==4.55.3
RUN pip install vector-quantize-pytorch==1.23.1
RUN pip install accelerate==1.10.0
RUN pip install torchinfo==1.8.0
RUN pip install gdown==5.2.0
RUN pip install onnx==1.19.0
RUN pip install onnxruntime==1.22.1
RUN pip install diffusers==0.35.1
RUN pip install ninja==1.13.0
RUN pip install x-transformers==2.7.4
# RUN git clone https://github.com/NVIDIA/apex.git /tmp/apex && \
#     cd /tmp/apex && \
#     APEX_CPP_EXT=1 APEX_CUDA_EXT=1 APEX_ALL_CONTRIB_EXT=1 pip install -v --no-build-isolation .
