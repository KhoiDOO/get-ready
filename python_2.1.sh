pip install wheel

# args
pip install omegaconf==2.3.0 
pip install jaxtyping typeguard

# training
pip3 install torch torchvision torchaudio
pip install lightning==2.0.0
pip install git+https://github.com/NVlabs/tiny-cuda-nn/#subdirectory=bindings/torch
pip install accelerate
python3 -m pip install tensorflow[and-cuda]

# nerf
pip install git+https://github.com/KAIR-BAIR/nerfacc.git@v0.5.2

# huggingface
pip install diffusers<0.20
pip install transformers==4.28.1

# image
pip install albumentations
pip install imageio>=2.28.0
pip install imageio[ffmpeg]

# graph
pip install matplotlib seaborn networkx

# logging
pip install tensorboard wandb

# metrics
pip install torchmetrics

# UI
pip install gradio==4.11.0
pip install jupyter

# 3D Geometry & Computer graphics
pip install git+https://github.com/NVlabs/nvdiffrast.git
pip install git+https://github.com/ashawkey/envlight.git
pip install libigl xatlas trimesh pysdf PyMCubes

# deepfloyd
pip install xformers
pip install bitsandbytes==0.38.1
pip install sentencepiece safetensors huggingface_hub

# for zero123
pip install einops kornia taming-transformers-rom1504
pip install git+https://github.com/openai/CLIP.git

#controlnet
pip install controlnet_aux
