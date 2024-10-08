# nvidia driver
nvidia-smi

# cuda version
nvcc --version

# cuda available for torch
import torch
torch.cuda.is_available()

# cudnn version
import torch
torch.backends.cudnn.version()

# check available cuda versions
ls -l /usr/local

# check changable cuda versions
sudo update-alternatives --display cuda

# change cuda version
sudo update-alternatives --config cuda