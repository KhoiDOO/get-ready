FROM kohido/base_cu128_u2204:v0.0.5

# Set noninteractive mode for apt
ENV DEBIAN_FRONTEND=noninteractive

# Update & install required packages
RUN python3 -m pip install --no-cache-dir \
        trimesh==4.8.1 plotly==6.3.0 objaverse==0.1.7 meshio[all]==5.3.5 point_cloud_utils==0.34.0 && \
    python3 -m pip install --no-cache-dir --ignore-installed open3d==0.19.0

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
    libgl1 \
    libsm6 \
    libxkbcommon0 && \
    apt-get autoremove -y && apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /var/cache/apt/* /usr/share/doc/* /usr/share/man/* /usr/share/locale/*

# Install Blender
# RUN apt install blender -y 
WORKDIR /opt
RUN curl -O https://download.blender.org/release/Blender4.5/blender-4.5.3-linux-x64.tar.xz
RUN tar xvf blender-4.5.3-linux-x64.tar.xz
RUN ln -s /opt/blender-4.5.3-linux-x64/blender /usr/local/bin/blender
RUN blender --version

RUN python3 -m pip install --no-cache-dir \
        pyvista==0.46.3 https://github.com/EasternJournalist/utils3d/archive/refs/tags/1.6.tar.gz \
        pygltflib==1.16.5 pymeshlab==2025.7 xatlas==0.0.11 PyMCubes==0.1.6 kiui[full]==0.2.18 \
        point-cloud-utils==0.34.0 && \
    python3 -m pip install --no-cache-dir \
        bpy==4.0.0 --extra-index-url https://download.blender.org/pypi/ && \
    python3 -m pip install --no-cache-dir \
        ocnn==2.3.1 mesh2sdf==1.1.0 pyopengl==3.1.10 pyopengl-accelerate==3.1.10 glfw==2.10.0