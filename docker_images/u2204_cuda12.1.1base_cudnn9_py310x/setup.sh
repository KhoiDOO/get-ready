mkdir Download
cd Download

apt-get update 
apt-get -y upgrade
apt-get install -y nano curl git tmux htop nvtop
apt-get install zlib1g

apt-get update
apt-get install -y build-essential software-properties-common

apt install -y make build-essential libssl-dev zlib1g-dev \
       libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm \
       libncurses5-dev libncursesw5-dev xz-utils tk-dev
curl -O https://www.python.org/ftp/python/3.10.15/Python-3.10.15.tgz
tar xvf Python-3.10.15.tgz
cd Python-3.10.15.tgz
./configure --enable-optimizations --with-ensurepip=install
make -j 8
make altinstall

apt-get update
apt-get -y install cudnn9-cuda-12

apt-get install -y python3-dev

cd ..