FROM kohido/base_dl_cuda129:v0.1.3

# Set noninteractive mode for apt
ENV DEBIAN_FRONTEND=noninteractive

# Update & install required packages
RUN pip install trimesh==4.8.1
RUN pip install --ignore-installed open3d==0.19.0
RUN pip install plotly==6.3.0
RUN pip install chamferdist==1.0.3
RUN pip install objaverse==0.1.7
RUN pip install meshio[all]==5.3.5

# Install Blender runtime dependencies
RUN apt-get update && apt-get install -y --no-install-recommends \
    libxrender1 \
    libxi6 \
    libxfixes3 \
    libxcursor1 \
    libxext6 \
    libx11-6 \
    libxrandr2 \
    libxxf86vm1 \
    libglu1-mesa \
    libgl1-mesa-glx \
    libsm6 \
    libxkbcommon0 \
    && rm -rf /var/lib/apt/lists/*

# Install Blender
# RUN apt install blender -y 
WORKDIR /opt
RUN curl -O https://download.blender.org/release/Blender4.5/blender-4.5.3-linux-x64.tar.xz
RUN tar xvf blender-4.5.3-linux-x64.tar.xz
RUN ln -s /opt/blender-4.5.3-linux-x64/blender /usr/local/bin/blender
RUN blender --version

RUN pip install pyvista==0.46.3
RUN pip install git+https://github.com/EasternJournalist/utils3d.git#egg=utils3d
RUN pip install pygltflib==1.16.5
RUN pip install pymeshlab==2025.7
RUN pip install xatlas==0.0.11
RUN pip install PyMCubes==0.1.6
RUN pip install kiui[full]==0.2.18
RUN pip install bpy==3.6.0 --extra-index-url https://download.blender.org/pypi/
