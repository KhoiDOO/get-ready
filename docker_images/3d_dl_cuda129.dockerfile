FROM kohido/base_dl_cuda129:v0.0.8

# Set noninteractive mode for apt
ENV DEBIAN_FRONTEND=noninteractive

# Update & install required packages
RUN pip install trimesh==4.8.1
RUN pip install --ignore-installed open3d==0.19.0
RUN pip install plotly==6.3.0
RUN pip install chamferdist==1.0.3
