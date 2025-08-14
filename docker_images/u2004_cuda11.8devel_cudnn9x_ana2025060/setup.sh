mkdir Download
cd Download

apt-get update 
apt-get -y upgrade
apt-get install -y curl git tmux htop nvtop
apt-get install zlib1g

apt-get update
apt-get install -y build-essential software-properties-common

apt install -y make build-essential libssl-dev zlib1g-dev \
       libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm \
       libncurses5-dev libncursesw5-dev xz-utils tk-dev

apt-get install -y python3-dev

apt-get update
apt-get -y install cudnn9-cuda-11

apt-get update
apt-get -y install libgl1-mesa-glx libegl1-mesa libxrandr2 libxrandr2 libxss1 libxcursor1 libxcomposite1 libasound2 libxi6 libxtst6
curl -O https://repo.anaconda.com/archive/Anaconda3-2025.06-0-Linux-x86_64.sh
bash Anaconda3-2025.06-0-Linux-x86_64.sh

cd ..