FROM nvidia/cuda:12.8.1-cudnn-runtime-ubuntu24.04

# Set noninteractive mode for apt
ENV DEBIAN_FRONTEND=noninteractive
ENV PIP_BREAK_SYSTEM_PACKAGES=1

# Update, install required packages (no-install-recommends) and clean up to reduce image size
RUN apt-get update && apt-get -y upgrade && \
    apt-get install -y --no-install-recommends \
        nano \
        curl \
        git \
        htop \
        nvtop \
        zlib1g \
        build-essential \
        software-properties-common \
        zip \
        wget \
        p7zip-full \
        p7zip-rar \
        bmon \
        python3-pip && \
    apt-get autoremove -y && apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /var/cache/apt/* /usr/share/doc/* /usr/share/man/* /usr/share/locale/*

# Consolidate all pip installs into a single layer, use --no-cache-dir to keep image lean
RUN python3 -m pip install --no-cache-dir --break-system-packages wheel && \
    python3 -m pip install --no-cache-dir --break-system-packages \
        torch==2.9.1 \
        torchvision==0.24.1 --index-url https://download.pytorch.org/whl/cu128 && \
    python3 -m pip install --no-cache-dir --break-system-packages \
        tqdm==4.67.1 omegaconf==2.3.0  gradio==5.44.1 tyro==0.9.35 pybind11==3.0.1 \
        ninja==1.13.0 gdown==5.2.0 megfile==4.2.4 && \
    python3 -m pip install --no-cache-dir --break-system-packages \
        opencv-python==4.12.0.88 imageio==2.37.0 imageio-ffmpeg==0.6.0 pillow==11.0.0\
        scikit-image==0.25.2 albumentationsx==2.0.10 && \
    python3 -m pip install --no-cache-dir --break-system-packages \
        tensorboard==2.20.0 wandb==0.25.0 && \
    python3 -m pip install --no-cache-dir --break-system-packages \
        scikit-learn==1.7.1 polars==1.34.0 datasets==4.0.0 && \
    python3 -m pip install --no-cache-dir --break-system-packages \
        einops==0.8.2 pytorch-warmup==0.2.0 pytorch-custom-utils==0.0.21 pytorch_warmup==0.2.0 \
        memory-efficient-attention-pytorch==0.1.6 \
        vector-quantize-pytorch==1.27.20 rectified-flow-pytorch==0.6.6 \
        accelerate==1.12.0 torchinfo==1.8.0 \
        x-transformers==2.16.0 timm==1.0.25 lightning==2.6.1 x-mlps-pytorch==0.2.0 torchmetrics==1.8.2