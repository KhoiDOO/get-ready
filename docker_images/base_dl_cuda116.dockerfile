FROM nvidia/cuda:11.6.1-devel-ubuntu20.04

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

RUN pip install torch==1.12.1+cu116 torchvision==0.13.1+cu116 torchaudio==0.12.1 --extra-index-url https://download.pytorch.org/whl/cu116