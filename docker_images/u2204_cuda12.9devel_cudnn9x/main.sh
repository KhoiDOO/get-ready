docker run --rm --runtime=nvidia --gpus all \
    --device /dev/nvidia0:/dev/nvidia0 \
    --device /dev/nvidiactl:/dev/nvidiactl \
    --device /dev/nvidia-uvm:/dev/nvidia-uvm \
    --device /dev/nvidia-uvm-tools:/dev/nvidia-uvm-tools \
    nvcr.io/nvidia/cuda:12.9.1-cudnn-devel-ubuntu22.04 nvidia-smi # change the image here
