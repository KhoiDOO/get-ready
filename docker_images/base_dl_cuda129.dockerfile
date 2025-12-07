FROM nvidia/cuda:12.9.1-cudnn-devel-ubuntu22.04

# Set noninteractive mode for apt
ENV DEBIAN_FRONTEND=noninteractive

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
        git-lfs \
        bmon \
        python3-pip && \
    git lfs install && \
    apt-get autoremove -y && apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /var/cache/apt/* /usr/share/doc/* /usr/share/man/*

# Consolidate pip installs into a single layer, use --no-cache-dir and remove pip cache
RUN pip install -U --no-cache-dir pip wheel && \
    pip install --no-cache-dir \
        tqdm==4.67.1 beartype==0.21.0 omegaconf==2.3.0 pillow==11.0.0 opencv-python==4.12.0.88 \
        scikit-image==0.25.2 albumentationsx==2.0.10 scikit-learn==1.7.1 wandb==0.21.1 \
        tensorboard==2.20.0 datasets==4.0.0 gdown==5.2.0 ninja==1.13.0 polars==1.34.0 \
        imageio==2.37.0 imageio-ffmpeg==0.6.0 gradio==5.44.1 tyro==0.9.35 pybind11==3.0.1 \
        megfile==4.2.4 && \
    pip install --no-cache-dir --index-url https://download.pytorch.org/whl/cu129 \
        torch torchvision && \
    pip install --no-cache-dir \
        einops==0.8.1 ema-pytorch==0.7.7 pytorch-warmup==0.2.0 pytorch-custom-utils==0.0.21 \
        memory-efficient-attention-pytorch==0.1.6 sentencepiece==0.2.1 transformers==4.55.3 \
        vector-quantize-pytorch==1.23.1 accelerate==1.10.0 torchinfo==1.8.0 onnx==1.19.0 \
        onnxruntime==1.22.1 diffusers==0.35.1 x-transformers==2.7.4 timm==1.0.19 && \
    rm -rf /root/.cache/pip
