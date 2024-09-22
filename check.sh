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